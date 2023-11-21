local builtin = require("telescope.builtin")
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fa", builtin.find_files, { desc = "find in all files" })
vim.keymap.set("n", "<leader>ff", builtin.buffers, { desc = "find in buffers" })
vim.keymap.set("n", "<leader>fj", builtin.jumplist, { desc = "find in jump list" })
vim.keymap.set('n', '<leader>fg', function()
	builtin.live_grep()
end)

