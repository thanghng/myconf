return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
        ensure_installed = {"c", "make", "cmake", "bash"},
        ignore_install = {},
        highlight = {
          enable = true,
          additional_vim_regex_highlighting = false
        },
				auto_install = true,
				sync_install = false,
				indent = { enable = true },
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
	},
}
