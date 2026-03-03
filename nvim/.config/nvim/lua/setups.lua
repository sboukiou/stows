local lsp = {}

-- Shared diagnostic config (set once)
vim.diagnostic.config({
	virtual_text = true,
	virtual_lines = false,
	update_in_insert = false,
	severity_sort = true,
})

--------------------------------------------------
-- Clangd (C / C++)
--------------------------------------------------
function lsp.setupClangd()
	vim.lsp.config.clangd = {
		cmd = { "clangd", "--background-index" },
		filetypes = { "c", "cpp", "objc", "objcpp" },
	}
	vim.lsp.enable("clangd")
end

--------------------------------------------------
-- Lua
--------------------------------------------------
function lsp.setupLua()
	vim.lsp.config.lua_ls = {
		cmd = { "lua-language-server" },
		filetypes = { "lua" },
		settings = {
			Lua = {
				diagnostics = {
					globals = { "vim" }, -- Prevent "undefined global vim"
				},
				workspace = {
					checkThirdParty = false,
				},
			},
		},
	}
	vim.lsp.enable("lua_ls")
end

--------------------------------------------------
-- Zig
--------------------------------------------------
function lsp.setupZig()
	vim.lsp.config.zls = {
		cmd = { "zls" },
		filetypes = { "zig" },
	}
	vim.lsp.enable("zls")
end

--------------------------------------------------
-- Rust
--------------------------------------------------
function lsp.setupRust()
	vim.lsp.config.rust_analyzer = {
		cmd = { "rust-analyzer" },
		filetypes = { "rust" },
		settings = {
			["rust-analyzer"] = {
				cargo = { allFeatures = true },
				checkOnSave = true,
			},
		},
	}
	vim.lsp.enable("rust_analyzer")
end

--------------------------------------------------
-- Svelte
--------------------------------------------------
function lsp.setupSvelte()
	vim.lsp.config("svelte",  {
		cmd = { ' /home/said/.local/share/nvim/mason/bin/svelteserver', '--stdio' },
		filetypes = {'svelte'},
	})
	vim.lsp.enable("svelte")
end

--------------------------------------------------
-- Taplo (TOML)
--------------------------------------------------
function lsp.setupTaplo()
	vim.lsp.config.taplo = {
		cmd = { "taplo", "lsp", "stdio" },
		filetypes = { "toml" },
	}
	vim.lsp.enable("taplo")
end

--------------------------------------------------
-- AST-Grep
--------------------------------------------------
function lsp.setupAstGrep()
	vim.lsp.config.ast_grep = {
		cmd = { "ast-grep", "lsp" },
		filetypes = {
			"c", "cpp", "rust", "go", "java",
			"python", "c_sharp", "javascript",
			"javascriptreact", "typescript",
			"typescriptreact", "html", "css",
			"kotlin", "dart", "lua",
		},
	}
	vim.lsp.enable("ast_grep")
end

--------------------------------------------------
-- Auto Completion
--------------------------------------------------
function lsp.setupAutoCompletion()
	vim.api.nvim_create_autocmd("LspAttach", {
		callback = function(ev)
			local client = vim.lsp.get_client_by_id(ev.data.client_id)

			if client and client:supports_method("textDocument/completion") then
				vim.lsp.completion.enable(true, client.id, ev.buf, {
					autotrigger = false,
				})

				vim.keymap.set("i", "<C-n>", function()
					if vim.fn.pumvisible() == 1 then
						return "<C-n>"
					else
						return "<C-x><C-o>"
					end
				end, { buffer = ev.buf, expr = true })

				vim.keymap.set("i", "<C-p>", "<C-p>", { buffer = ev.buf })
			end
		end,
	})
end

--------------------------------------------------
-- Setup Everything
--------------------------------------------------
function lsp.setupAll()
	lsp.setupClangd()
	lsp.setupLua()
	lsp.setupZig()
	lsp.setupRust()
	lsp.setupSvelte()
	lsp.setupTaplo()
	lsp.setupAstGrep()
	lsp.setupAutoCompletion()
end

return lsp
