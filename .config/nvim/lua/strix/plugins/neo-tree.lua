return {
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons",
			"MunifTanjim/nui.nvim",
		},
		config = function()
			local neotree = require("neo-tree")
			neotree.setup({
				close_if_last_window = true,
				event_handlers = {
					{
						event = "file_opened",
						handler = function()
							require("neo-tree.command").execute({ action = "close" })
						end,
					},
				},
			})

			vim.keymap.set(
				"n",
				"<C-n>",
				":Neotree source=filesystem reveal=true position=left toggle=true<CR>",
				{ desc = "Toogle Neotree" }
			)
		end,
	},
}
