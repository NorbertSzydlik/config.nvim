local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>aa", mark.add_file, { desc = "Add file mark" })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu, { desc = "Toggle mark quick menu" })
vim.keymap.set("n", "<leader>aq", ui.toggle_quick_menu, { desc = "Toggle mark quick menu" })

