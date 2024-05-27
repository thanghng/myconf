local set_key_map = vim.api.nvim_set_keymap

set_key_map("n", "<ESC>", "<cmd>nohlsearch<CR>", {})
set_key_map("n", "<leader>bn", "<cmd>bnext<CR>", {})
set_key_map("n", "<leader>bp", "<cmd>bprev<CR>", {})
set_key_map("n", "<leader>tn", "<cmd>tNext<CR>", {})
set_key_map("n", "<leader>tp", "<cmd>tprev<CR>", {})
set_key_map("x", "<leader>/", "<esc>/\\%V<CR>", {})
