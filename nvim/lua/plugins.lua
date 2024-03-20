return {
	load = function()
		local Plug = vim.fn['plug#']

		-- Plugins
		vim.call('plug#begin')

		Plug '42Paris/42Header'
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
		Plug 'nvim-treesitter/nvim-treesitter'
		Plug 'm4xshen/autoclose.nvim'
		Plug 'akinsho/bufferline.nvim'
		Plug 'neanias/everforest-nvim'

		vim.call('plug#end')
	end
}
