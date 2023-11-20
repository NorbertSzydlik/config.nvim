pcall(function()
  vim.o.termguicolors = true
  vim.g.mapleader = " "

  require("ccc").setup {
    highlighter = {
      auto_enable = false;
    };
  }
  vim.keymap.set("n", "<leader>cc", "<CMD>CccPick<CR>")
end)

