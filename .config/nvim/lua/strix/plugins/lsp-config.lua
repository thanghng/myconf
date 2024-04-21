return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "tsserver",
          "cmake",
          "gopls",
          "clangd",
          "pyright"
        }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.tsserver.setup({})
      lspconfig.cmake.setup({})
      lspconfig.gopls.setup({})
      lspconfig.clangd.setup({})

      vim.keymap.set("n", "<F11>", vim.lsp.buf.declaration, {})
      vim.keymap.set("n", "<F12>", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<F1>", vim.lsp.buf.hover, {})
      vim.keymap.set({ "n", "v" }, "<M-CR>", vim.lsp.buf.code_action, {})
      vim.keymap.set("n", "<S-F12>", vim.lsp.buf.references, {})
    end
  }
}
