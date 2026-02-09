return {
	{
		"Diogo-ss/42-header.nvim",
		cmd = { "Stdheader" },
		keys = { "<F1>" },
		opts = {
			default_map = true, -- Default mapping <F1> in normal mode.
			auto_update = true, -- Update header when saving.
			user = os.getenv("LOGIN"), -- Your user.
			mail = os.getenv("MAIL")-- Your mail.
			-- add other options.
		},
		config = function(_, opts)
			require("42header").setup(opts)
		end,
	},
	-- {
	-- 	"FtVim/norminette-lint.nvim",
	-- 	config = function()
	-- 		require("norminette-lint").setup({
	-- 			enable_on_start = true,  -- Default to false to improve startup performance
	-- 			keybinding = "<leader>Fn", -- Default keybinding, you can define yours
	-- 		})
	-- 	end
	-- },
	--
	--
	--[[ Costum plugin under-development ]]--
	--
	-- {
		-- 	dir = '/home/sboukiou/repos/others/norme.nvim',
		-- 	config = function ()
			-- 		require "norme"
	-- 	end,
	-- }
}
