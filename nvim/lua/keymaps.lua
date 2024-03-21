return {
	load = function()
		local opts = { noremap = true, silent = true }
		local n_keymap = function(mode, key, cmd)
			vim.api.nvim_set_keymap(mode, key, cmd, opts)
		end

		--[[
		-- normal mode -> 'n'
		-- insert mode -> 'i'
		-- visual mode -> 'v'
		-- term mode -> 't'
		-- command mode -> 'c'
		--
		-- keymap(mode, key, command)
		--]]

		-- Buffers
		n_keymap('n', '<leader>bn', ':bn<CR>') -- buffer next
		n_keymap('n', '<leader>bp', ':bp<CR>') -- buffer prev
		n_keymap('n', '<leader>bd', ':bd<CR>') -- buffer delete
		n_keymap('n', '<leader>bb', ':buffers<CR>') -- buffer list

		-- Cmd
		n_keymap('n', '<leader>q', ':q<CR>') -- Quit
		n_keymap('n', '<leader>w', ':w<CR>') -- Save
		n_keymap('n', '<leader>', ':')

		-- Tabs
		n_keymap('n', '<leader><TAB>', ':tabe ')
	end
}
