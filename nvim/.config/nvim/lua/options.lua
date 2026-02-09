--Lines numbers  and indenting
vim.opt.rnu = true
vim.opt.nu = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.cursorline = true
vim.opt.hlsearch = true
vim.cmd.colorscheme 'nordic'
vim.opt.colorcolumn= "88"

vim.cmd([[
	highlight ColorColumn guibg=lightgrey
]])



-- Swap file setup
vim.opt.swapfile = false


vim.opt.grepprg = 'rg'

-- Set cursor shape to block (if you're a real one)
vim.opt.guicursor = "n-v-i-c:block-Cursor"

--[[ For background transparency ]]
vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
-- Setup the transparent background for all opened buffers
vim.cmd([[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight NormalFloat guibg=NONE ctermbg=NONE
  highlight FloatBorder guibg=NONE ctermbg=NONE
  highlight SignColumn guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
]])

