require'nvim-treesitter.configs'.setup {
	ensure_installed = { "bash", "c", "cpp", "dockerfile", "javascript", "lua", "python", "rust", "typescript" },
	highlight = {
		enable = true,
		disable = function(lang, buf)
			local max_filesize = 500 * 1024 -- 500Kb
			local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
			if ok and stats and stats.size > max_filesize then
				return true
			end
		end,
	}
}
