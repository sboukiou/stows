return {
	{
		'nvim-treesitter/nvim-treesitter',
		branch = 'main',        -- THIS is the fix for 0.12 [citation:1][citation:12]
			lazy = false,
		build = ':TSUpdate',
	}
}
