return {
	load = function()
		require('config.treesitter')
		require('config.autoclose')
		require('config.gitsigns')
		require('config.42header')
		require('config.nvim-tree')
		require('config.comment')
		require('config.indentblankline')
		require('config.telescope')
		require('config.bufferline')
		require('config.feline')

		-- Set the colorscheme
		vim.cmd 'colorscheme everforest'
	end
}
