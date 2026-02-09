-- General Keymaps
vim.keymap.set('n', '<space>gb', ':Ex<CR>')
vim.keymap.set('n', '<Tab>', ":bnext<CR>")
vim.keymap.set('n', '<S-Tab>', ":bprev<CR>")
vim.keymap.set('n', '<ESC>', ":nohlsearch<CR>")
vim.keymap.set('n', '<space>m', ":make<CR>")

-- Telescope keymaps
local tscp = require('telescope.builtin')
vim.keymap.set('n', '<space>ff', tscp.find_files)
vim.keymap.set('n', '<space>fg', tscp.live_grep)
vim.keymap.set('n', '<space>mm', tscp.man_pages)
vim.keymap.set('n', '<space>gc', tscp.man_pages)

-- LSP Keymaps
-- Lsp mappings
vim.keymap.set('n', '<space>gf', vim.lsp.buf.definition, {})
vim.keymap.set('n', '<space>gd', vim.lsp.buf.declaration, {})
vim.keymap.set('n', '<space>gi', vim.lsp.buf.implementation, {})
vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set({ 'n', 'v' }, '<space>ca', vim.lsp.buf.code_action, {})
