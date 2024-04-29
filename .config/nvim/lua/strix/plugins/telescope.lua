return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "[S]earch [F]ile" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by rip[G]rep" })
			vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch [B]uffer" })
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
			vim.keymap.set("n", "<leader>sc", builtin.commands, { desc = "[S]earch Nvim [C]ommand" })
			vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch Nvim [K]map" })
			-- vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "LSP [S]earch [D]iagnostics" })
			-- vim.keymap.set("n", "<leader>ss", builtin.lsp_document_symbols, { desc = "LSP [S]earch [S]ymbols" })
			-- vim.keymap.set(
			-- 	"n",
			-- 	"<leader>sws",
			-- 	builtin.lsp_workspace_symbols,
			-- 	{ desc = "LSP [S]earch [W]orkspace [S]ymbols" }
			-- )
			-- vim.keymap.set("n", "<leader>sr", builtin.lsp_references, { desc = "LSP [S]earch [R]eferences" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				-- defaults = require("telescope.themes").get_dropdown({}),
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
