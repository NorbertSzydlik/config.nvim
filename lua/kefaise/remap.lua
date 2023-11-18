vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.timeout = true
vim.g.timeoutlen = 5000

vim.keymap.set("n", "<leader> ", "<nop>", { desc = "cancel" })
vim.keymap.set("n", "<leader>fq", vim.cmd.Ex, { desc = "close file" })
vim.keymap.set("n", "<leader>fx", vim.cmd.Ex, { desc = "close file" })

vim.keymap.set("n", "<leader>ss", vim.cmd.w, { desc = "save file" })
vim.keymap.set("n", "<leader>so", vim.cmd.so, { desc = "source file"})


vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { desc = "exit terminal mode"})

vim.keymap.set("n", "<C-t>", "<CMD>tabnew<CR>", { desc = "new tab" })
vim.keymap.set("n", "<A-Left>", "<CMD>tabprevious<CR>", { desc = "previous tab" })
vim.keymap.set("n", "<C-Left>", "<CMD>-tabmove<CR>", { desc = "move tab left" })
vim.keymap.set("n", "<A-Right>", "<CMD>tabnext<CR>", { desc = "next tab" })
vim.keymap.set("n", "<C-Right>", "<CMD>+tabmove<CR>", { desc = "move tab right" })
vim.keymap.set("n", "<A-1>", "1gt")
vim.keymap.set("n", "<A-2>", "2gt")
vim.keymap.set("n", "<A-3>", "3gt")
vim.keymap.set("n", "<A-4>", "4gt")
vim.keymap.set("n", "<A-5>", "5gt")
vim.keymap.set("n", "<A-6>", "6gt")
vim.keymap.set("n", "<A-7>", "7gt")
vim.keymap.set("n", "<A-8>", "8gt")
vim.keymap.set("n", "<A-9>", "9gt")
vim.keymap.set("n", "<A-0>", "<CMD>tablast<CR>")

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

