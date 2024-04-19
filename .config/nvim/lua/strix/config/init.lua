local opt = vim.opt
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.number = true

-- Load all config
require("strix.config.commands")
require("strix.config.keymaps")
