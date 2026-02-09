local lsp = {}

function lsp.setupClangd()
	vim.lsp.config.clangd = {
		cmd = { 'clangd',  '--background-index' },
		filetypes = { 'c', 'cpp' },
	}
	vim.lsp.enable({'clangd'})
	vim.diagnostic.config({ virtual_text = true })

end

function lsp.setupLua()
	vim.lsp.config.luals = {
		cmd = { 'lua-language-server' },
		filetypes = { 'lua' },
	}
	vim.lsp.enable({'luals'})
	vim.diagnostic.config({ virtual_text = true, virtual_lines = true })

end

function lsp.setupAutoCompletion()
	vim.api.nvim_create_autocmd('LspAttach', {
		callback = function(ev)
			local client = vim.lsp.get_client_by_id(ev.data.client_id)
			if client:supports_method('textDocument/completion') then
				vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = false })
				
				-- Trigger completion with C-n using omnifunc
				vim.keymap.set('i', '<C-n>', function()
					if vim.fn.pumvisible() == 1 then
						return '<C-n>'
					else
						return '<C-x><C-o>'  -- Use omnifunc trigger
					end
				end, { buffer = ev.buf, expr = true })
				
				vim.keymap.set('i', '<C-p>', '<C-p>', { buffer = ev.buf })
			end
		end,
	})
end

function lsp.setupAll()
	lsp.setupClangd()
	lsp.setupLua()
	lsp.setupAutoCompletion()
end


return lsp
