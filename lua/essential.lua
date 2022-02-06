-----------------------------------------------------------
-- Essential configuration on development init.lua
-----------------------------------------------------------

vim.g.mapleader = ' '
vim.g.maplocalleader = ';'
vim.o.timeoutlen=500

vim.opt.encoding = 'UTF-8'
vim.opt.swapfile = false
vim.opt.cursorline = true
vim.opt.termguicolors = true
vim.opt.mouse = 'a'
vim.guifont = 'DroidSansMono Nerd Font 18'

-- Display line number on side bar
vim.opt.numberwidth = 4
vim.wo.number = true
vim.wo.relativenumber = true
-- Disable line wrap
vim.opt.textwidth = 0
vim.opt.wrapmargin = 0
vim.wo.wrap = false
-- -- Tabs
-- vim.bo.expandtab = true
-- vim.bo.shiftwidth = 2
-- vim.bo.softtabstop = 2
-- vim.cmd([[
-- autocmd FileType lua setlocal expandtab shiftwidth=4 tabstop=4 smartindent
-- autocmd BufEnter *.lua set autoindent expandtab shiftwidth=4 tabstop=4
-- ]])
-- Reformat indent line
-- gg=G
-- vim.cmd([[
-- command! -range=% Format :<line1>,<line2>s/^\s*/&&
-- ]])
