return {
	-- ColorSchemes
	{
		'shaunsingh/nord.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			require('nord').set()
		end
	},
	{ "catppuccin/nvim", name = "catppuccin", priority = 1000 },
	{
		'nvim-lualine/lualine.nvim',
		dependencies = { 'nvim-tree/nvim-web-devicons' },
		config = function()
			require('lualine').setup({
				theme = 'iceberg_dark',
				options = {
					section_separators = { left = '', right = '' },
					component_separators = { left = '', right = '' }
				}
			})
		end,
	},
	{
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"MunifTanjim/nui.nvim",
			"nvim-tree/nvim-web-devicons", -- optional, but recommended
		},
		lazy = false, -- neo-tree will lazily load itself
	}
}
