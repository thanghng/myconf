return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function () 
      local configs = require("nvim-treesitter.configs")
      configs.setup({
        ensure_installed = { "c", "lua", "python", "cpp", "javascript", "html", "go", "json", "cmake", "dockerfile" },
        sync_install = false,
        highlight = { enable = true },
        indent = { enable = true },  
      })
    end
  }
}
