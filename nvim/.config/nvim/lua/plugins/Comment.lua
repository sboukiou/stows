return {
	-- add this to your lua/plugins.lua, lua/plugins/init.lua,  or the file you keep your other plugins:
	{
		'numToStr/Comment.nvim',
		opts = {
			padding = true,
			---Whether the cursor should stay at its position
			sticky = true,
			---Lines to be ignored while (un)comment
			ignore = nil,
			opleader = {
				---Line-comment keymap
				line = 'gb',
				---Block-comment keymap
				block = 'gc',
			},
		},
		config = function()
			require('Comment').setup()
			local ft = require('Comment.ft')

			-- 1. Using set function

			ft
			-- Set only line comment
			.set('yaml', '#%s')
			-- Or set both line and block commentstring
			.set('javascript', {'//%s', '/*%s*/'})
			.set('cpp', {'//%s', '/*%s*/'})

			-- 2. Metatable magic

			ft.javascript = {'//%s', '/*%s*/'}
			ft.cpp = {'//%s', '/*%s*/'}
			ft.yaml = '#%s'

			-- Multiple filetypes
			ft({'go', 'rust'}, ft.get('c'))
			ft({'toml', 'graphql'}, '#%s')
		end,
	}

}
