return {
	{
		"catppuccin/nvim",
		lazy = false,
		name = "catppuccin",
		priority = 1000,
		config = function()
			require("catppuccin").setup({
				flavour = "mocha",
				background = {
					dark = "mocha",
					light = "latte",
				},
				integrations = {
					cmp = true,
					gitsigns = true,
					neotree = true,
					treesitter = true,
					mini = {
						enabled = true,
						indentscope_color = "",
					},
					mason = true,
					dap = true,
					dap_ui = true,
					native_lsp = {
						enabled = true,
						virtual_text = {
							errors = { "italic" },
							hints = { "italic" },
							warnings = { "italic" },
							information = { "italic" },
						},
						underlines = {
							errors = { "underline" },
							hints = { "underline" },
							warnings = { "underline" },
							information = { "underline" },
						},
						inlay_hints = {
							background = true,
						},
					},
					telescope = {
						enabled = true,
						-- style = "nvchad"
					},
					which_key = true,
				},
			})
			-- vim.cmd.colorscheme("catppuccin")
		end,
	},
}
