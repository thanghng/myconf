return {
	{
		"nvimtools/none-ls.nvim",
		dependencies = {
			"nvimtools/none-ls-extras.nvim",
			"nvim-lua/plenary.nvim",
		},
		config = function()
			-- local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
			local null_ls = require("null-ls")
			null_ls.setup({
				sources = {
					null_ls.builtins.formatting.stylua,
					null_ls.builtins.formatting.prettier,
					null_ls.builtins.formatting.black,
					null_ls.builtins.formatting.clang_format,
					require("none-ls.diagnostics.eslint_d"),
				},
				-- on_attach = function(client, bufnr)
				--   if client.supports_method("textDocument/formatting") then
				--     vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
				--     vim.api.nvim_create_autocmd("BufWritePre", {
				--       group = augroup,
				--       buffer = bufnr,
				--       callback = function()
				--         vim.lsp.buf.format({ async = false })
				--       end,
				--     })
				--   end
				-- end,
			})

			vim.keymap.set({ "n", "v" }, "<leader>gf", function()
				vim.lsp.buf.format({
					filter = function(client)
						return client.name == "null-ls"
					end,
				})
			end, {})
		end,
	},
}
