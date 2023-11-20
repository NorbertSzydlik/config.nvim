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

vim.cmd("let g:terminal_color_0  = '#ec3436'")
vim.cmd("let g:terminal_color_1  = '#e72828'")
vim.cmd("let g:terminal_color_2  = '#4e9a06'")
vim.cmd("let g:terminal_color_3  = '#c4a000'")
vim.cmd("let g:terminal_color_4  = '#1996c7'")
vim.cmd("let g:terminal_color_5  = '#75507b'")
vim.cmd("let g:terminal_color_6  = '#0b939b'")
vim.cmd("let g:terminal_color_7  = '#d3d7cf'")
vim.cmd("let g:terminal_color_8  = '#555753'")
vim.cmd("let g:terminal_color_9  = '#ef2929'")
vim.cmd("let g:terminal_color_10 = '#8ae234'")
vim.cmd("let g:terminal_color_11 = '#fce94f'")
vim.cmd("let g:terminal_color_12 = '#729fcf'")
vim.cmd("let g:terminal_color_13 = '#ad7fa8'")
vim.cmd("let g:terminal_color_14 = '#00f5e9'")
vim.cmd("let g:terminal_color_15 = '#eeeeec'")

