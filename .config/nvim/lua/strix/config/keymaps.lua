local keymap = vim.keymap

keymap.set("n", "<ESC>", "<cmd>nohlsearch<CR>", {})
keymap.set("n", "<leader>bn", "<cmd>bnext<CR>", {})
keymap.set("n", "<leader>bp", "<cmd>bprev<CR>", {})
keymap.set("x", "<leader>/", "<esc>/\\%V<CR>", {})
