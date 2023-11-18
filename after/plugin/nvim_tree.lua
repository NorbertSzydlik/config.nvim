-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>tt", "<CMD>NvimTreeToggle<CR>", { desc = "toggle file explorer" })
vim.keymap.set("n", "<leader>tr", "<CMD>NvimTreeFindFile<CR>", { desc = "find file in tree" })

local tree_view = require("nvim-tree.view").View
tree_view.winopts.signcolumn = "no"
tree_view.winopts.fillchars = "eob: "

