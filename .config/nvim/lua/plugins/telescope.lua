return {
	{
		"nvim-telescope/telescope.nvim",
		branch = "0.1.x",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>sf", function()
				builtin.find_files({
					hidden = true,
					-- layout_strategy = "vertical",
				})
			end, { desc = "[S]earch [F]ile" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by rip[G]rep" })
			vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "[S]earch [B]uffer" })
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "[S]earch [H]elp" })
			vim.keymap.set("n", "<leader>sc", builtin.commands, { desc = "[S]earch Nvim [C]ommand" })
			vim.keymap.set("n", "<leader>sk", builtin.keymaps, { desc = "[S]earch Nvim [K]map" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				defaults = {
					mappings = {
						i = {
							["<M-p>"] = require("telescope.actions.layout").toggle_preview,
						},
					},
					layout_strategy = "vertical",
					layout_config = {
						vertical = {
							mirror = true,
							prompt_position = "top",
						},
					},
					preview = {
						hide_on_startup = true,
					},
				},
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" },
		vim.keymap.set("n", "<space>fb", function()
			require("telescope").extensions.file_browser.file_browser()
		end),
	},
}
