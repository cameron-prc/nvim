-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- nnoremap <Esc><Esc> :nohlsearch<CR>
vim.keymap.set("n", "<Esc><Esc>", "<cmd>:nohlsearch<CR>", { desc = "Clear file search" })

-- Global Search
vim.keymap.set("n", "<leader>ff", "<cmd>FzfLua files<CR>", { desc = "Find Files" })
vim.keymap.set("n", "<leader>fg", "<cmd>FzfLua live_grep<CR>", { desc = "Live Grep" })
vim.keymap.set("n", "<leader>fb", "<cmd>FzfLua buffers<CR>", { desc = "Find Buffers" })
vim.keymap.set("n", "<leader>fh", "<cmd>FzfLua help_tags<CR>", { desc = "Help Tags" })
vim.keymap.set("n", "<leader>fr", "<cmd>FzfLua resume<CR>", { desc = "Resume Last Search" })

-- Tree
vim.keymap.set('n', '<leader>e', '<Cmd>Neotree toggle<CR>')

-- Claude Code
-- vim.keymap.set('n', '<leader>cc', '<cmd>ClaudeCode<CR>', { desc = 'Toggle Claude Code' })

vim.keymap.set('n', '<C-N>', ':bnext<CR>', { desc = 'Next Buffer' })
vim.keymap.set('n', '<C-P>', ':bprev<CR>', { desc = 'Previous Buffer' })


vim.keymap.set('n', '<leader>lb', "<cmd>:ls <CR>:b", { desc = 'find buffer'})

vim.keymap.set('n', 'gi', ':vim.lsp.buf.implementation()', { desc = 'Go to implementation'})
