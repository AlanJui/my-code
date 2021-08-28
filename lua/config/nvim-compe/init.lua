-- Plugin configuration: nvim-compe
-- ============================================================================

-- Set completeopt to have a better completion experience

-- Prerequisite
-- vim.o.completeopt = 'menuone,noselect'
-- vim.o.completeopt = 'menuone,noinsert'


-- Compe setup for LuaSnip
require('compe').setup {
  source = {
    path = true,
    buffer = true,
    calc = true,
    nvim_lsp = true,
    nvim_lua = false,
    luasnip = true,
    vsnip = true,
    ultisnips = false,
  },
}


-- Utility functions for compe and VSnip
-- Ref: ~/.config/nvim/lua/config/vim-vsnip/init.lua
