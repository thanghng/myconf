vim.api.nvim_create_autocmd({ "BufNewFile", "BufRead" }, {
  desc = "Auto FileType for glsl",
  pattern = {
    "*.vert",
    "*.tesc",
    "*.tese",
    "*.geom",
    "*.frag",
    "*.comp",
    "*.rgen",
    "*.rint",
    "*.rahit",
    "*.rchit",
    "*.rmiss",
    "*.rcall",
  },
  command = "setfiletype glsl",
})
