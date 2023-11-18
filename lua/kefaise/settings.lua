-- Change working directory to current when openning folder
function LoadNvimLua()
  print(".nvim.lua before exists " .. vim.fn.getcwd())
  local nvim_lua_path = vim.fn.getcwd() .. "/.nvim.lua"
  if not vim.fn.filereadable(nvim_lua_path) then
    return
  end

  -- local result = vim.secure.trust({
  --   action = "allow",
  --   path = nvim_lua_path,
  -- })
  -- if not result then
  --   return
  -- end

  local nvim_lua = vim.secure.read(nvim_lua_path)
  print(".nvim.lua exists" .. nvim_lua_path)
  if nvim_lua == nil then
    print("Could not read .nvim.lua")
    return
  end
  local f = loadstring(nvim_lua)
  print(".nvim.lua parsed: " .. nvim_lua)

  if f == nil then
    return
  end

  f()
  print("loaded nvim.lua")
end

vim.api.nvim_create_autocmd(
  {"VimEnter"},
  {
    pattern = {"*"},
    callback = function()
      vim.cmd("if isdirectory(expand('%:p')) | cd %:p | endif")
      pcall(function() LoadNvimLua() end)
    end
  }
)

vim.api.nvim_create_autocmd(
  {"DirChanged"},
  {
    pattern = {"*"},
    callback = LoadNvimLua,
  }
)


vim.o.expandtab = true
vim.o.smartindent = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

vim.o.mouse = "v"

vim.o.swapfile = false
vim.o.backup = false
vim.o.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.o.undofile = true

-- show line numbers
vim.wo.number = true
vim.wo.relativenumber = true

vim.wo.signcolumn = "yes"

vim.o.termguicolors = true

vim.o.hlsearch = true
vim.o.incsearch = true

vim.o.scrolloff=8

-- Decrease update time
vim.o.updatetime = 250
vim.o.timeoutlen = 1000

vim.g.mapleader = " "

vim.o.colorcolumn = "80,120"

require("catppuccin").setup({
  flavour = "macchiato", -- latte, frappe, macchiato, mocha 
  show_end_of_buffer = true,
})

vim.cmd.colorscheme "catppuccin"

vim.o.exrc = true
vim.o.secure = true

