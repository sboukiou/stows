local Lsp = {}

function Lsp.setup_clangd()
	vim.lsp.config('clangd', {
			cmd = { 'clangd' },
			filetypes = { 'c', 'cpp' },
			root_markers = { 'compile_commands.json', 'compile_flags.txt', '.git' },
			})
vim.lsp.enable('clangd')
end


function Lsp.setup_lua()
	vim.lsp.config('lua_ls', {
			settings = {
			Lua = {
			runtime = { version = 'LuaJIT' },
			diagnostics = {
			globals = { 'vim' },
			},
			workspace = {
			checkThirdParty = false,
			library = {
			vim.env.VIMRUNTIME,
			},
			},
			telemetry = { enable = false },
			},
			},
			})
vim.lsp.enable('lua_ls')
end

	function Lsp.init()
	Lsp.setup_clangd()
Lsp.setup_lua()
	vim.diagnostic.config({
			virtual_text = true,
			signs = true,
			underline = true,
			})
end

return Lsp
