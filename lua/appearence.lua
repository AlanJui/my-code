-- Appearence configuration
-- ============================================================================


-- vim.cmd('colorscheme one-nvim')

--set colorscheme (order is important here)
vim.o.termguicolors = true
vim.g.onedark_terminal_italics = 2
-- vim.cmd [[colorscheme onedark]]
vim.cmd [[run time ./colors/NeoSolarized.vim]]
-- vim.cmd [[colorscheme solarized8]]

--set statusbar
vim.g.lightline = {
  colorscheme = 'onedark',
  active = { left = { { 'mode', 'paste' }, { 'gitbranch', 'readonly', 'filename', 'modified' } } },
  component_function = { gitbranch = 'fugitive#head' },
}
