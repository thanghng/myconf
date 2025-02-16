vim.g.mapleader = " "
vim.g.maplocalleader = " "

local opt = vim.opt

opt.cursorline = true
opt.termguicolors = true
opt.statusline = "%{expand('%:~:.')} %y %m %r %= %l,%c %p%%"

-- Copying
opt.clipboard = "unnamedplus"

-- Searching
opt.ignorecase = true
opt.smartcase = true

-- Indent
opt.expandtab = true
opt.tabstop = 2
opt.softtabstop = 2
opt.shiftwidth = 2
opt.smartindent = true

-- Status columns
opt.number = true
opt.relativenumber = true
opt.numberwidth = 2
opt.signcolumn = "yes"

-- Spliting
opt.splitbelow = true
opt.splitright = true

-- Load all config
require("config.autocmds")
require("config.commands")
require("config.keymaps")
