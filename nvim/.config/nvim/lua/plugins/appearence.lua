return {
	-- ColorSchemes
	{
		'AlexvZyl/nordic.nvim',
		lazy = false,
		priority = 1000,
		config = function()
			require('nordic').load()
		end
	},
	-- lua/plugins/rose-pine.lua
	{
		"rose-pine/neovim",
		name = "rose-pine",
		config = function()
			vim.cmd("colorscheme rose-pine")
		end
	},
	{
		'nvim-treesitter/nvim-treesitter',
		require("lazy").setup({
			{
				"nvim-treesitter/nvim-treesitter",
				branch = 'master',
				lazy = false,
				build = ":TSUpdate"
			}
		})

	},
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
}
