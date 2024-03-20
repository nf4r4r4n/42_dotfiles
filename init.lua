-- VARIABLES
local Plug = vim.fn['plug#']
local Cmd = vim.cmd
local Opt = vim.opt
local Vim_g = vim.g
vim.g.mapleader = " "

-- Plugins
vim.call('plug#begin')

Plug '42Paris/42Header'
--Plug 'vim-airline/vim-airline'
--Plug 'vim-airline/vim-airline-themes'
Plug 'dracula/vim'
Plug 'xiyaowong/transparent.nvim'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'numToStr/Comment.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'nvim-tree/nvim-tree.lua'
Plug 'nvim-tree/nvim-web-devicons'
Plug 'lewis6991/gitsigns.nvim/'
Plug 'freddiehaddad/feline.nvim'
Plug 'catppuccin/nvim'
Plug 'nvim-treesitter/nvim-treesitter'
Plug 'm4xshen/autoclose.nvim'

vim.call('plug#end')

-- Auto Close
require('autoclose').setup()

-- TreeSitter
require('nvim-treesitter.configs').setup({
	ensure_installed = { 'c', 'cpp', 'lua', 'python', 'javascript', 'typescript' },
	highlight = {
		enable = true,
		disable = function(lang, buf)
			local max_filesize = 500 * 1024 -- 500KB
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
	}
})

-- Catppucin
require('catppuccin').setup()

-- Gitsigns
require('gitsigns').setup()

-- 42 Header
vim.g.user42 = 'nfararan'
vim.g.mail42 = 'marvin@42.fr'

-- Nvim Tree
require('nvim-tree').setup({
	sort = {
		sorter = 'case_sensitive',
	},
	view = {
		width = 30,
	},
	renderer = {
		group_empty = true,
	},
	filters = {
		dotfiles = true,
	},
})

-- Comment Nvim
require('Comment').setup()

-- Indent Blankline
require('ibl').setup()

-- NvimTree
vim.keymap.set('n', '<leader>E', ':NvimTreeToggle<CR>')
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})

-- Vim Airline
-- vim.g.airline#extensions#tabline#enabled = 1
-- vim.g.airline#extensions#tabline#left_sep = ' '
-- vim.g.airline#extensions#tabline#left_alt_sep = '|'
-- vim.g.airline#extensions#tabline#formatter = 'unique_tail'
-- Vim_g.airline_powerline_fonts = 1

-- Global neovim configs
Opt.autoindent = true
Opt.tabstop = 4
Opt.shiftwidth = 4
Opt.number = true
Opt.syntax = 'on'
Opt.termguicolors = true
--Cmd 'colorscheme dracula'
Cmd 'colorscheme catppuccin-macchiato'

-- Feline
local feline = require('feline')
feline.setup()
