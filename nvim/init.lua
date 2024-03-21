-- Plugins
require('plugins').load()

-- Global neovim configs
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.number = true
vim.opt.syntax = 'on'
vim.opt.termguicolors = true
vim.g.mapleader = " "

-- Plugin config files
require('config').load()

-- Keymaps
require('keymaps').load()
