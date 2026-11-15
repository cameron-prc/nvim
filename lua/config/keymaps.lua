-- Plugin-independent keymaps only.
-- Plugin keymaps live in each plugin's `keys` table; LSP keymaps live in config/autocmds.lua.

vim.keymap.set("n", "<Esc><Esc>", "<cmd>:nohlsearch<CR>", { desc = "Clear file search" })
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- Buffers
vim.keymap.set("n", "<C-N>", ":bnext<CR>", { desc = "Next Buffer" })
vim.keymap.set("n", "<C-P>", ":bprev<CR>", { desc = "Previous Buffer" })
vim.keymap.set("n", "<leader>lb", "<cmd>:ls <CR>:b", { desc = "find buffer" })
