local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
  {
    "nvim-telescope/telescope.nvim",
    branch = "0.1.x",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  {
    { "catppuccin/nvim", name = "catppuccin", priority = 1000 }
  },
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
  },
  {
    "nvim-treesitter/playground",
  },
  {
    "folke/which-key.nvim", opts = {}
  },
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
  },
  {
    "ThePrimeagen/harpoon",
  },
  {
    "lukas-reineke/indent-blankline.nvim", main = "ibl", opts = {},
  },
  {
    "numToStr/Comment.nvim",
    opts = {},
    lazy = false,
  },
  {
    "mbbill/undotree",
  },
  {"tpope/vim-fugitive"},
  {"tpope/vim-rhubarb"},
  {"tpope/vim-sleuth"},
  {"VonHeikemen/lsp-zero.nvim", branch = "v3.x"},
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      {"williamboman/mason.nvim"},
      {"williamboman/mason-lspconfig.nvim"},
      {"j-hui/fidget.nvim", opts = {},},
      {"folke/neodev.nvim"},
    },
  },
  {"hrsh7th/cmp-nvim-lsp"},
  {"hrsh7th/nvim-cmp"},
  {"L3MON4D3/LuaSnip"},
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
  },
  {"nvim-lualine/lualine.nvim"},
})

