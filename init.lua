-- ==========================================================
-- Plugins
-- ==========================================================
require('plugins')

-- ==========================================================
-- Generanl (Gobal) setting
-- ==========================================================
require('general')

-- ==========================================================
-- Appearance
-- ==========================================================
 require('appearence')

-- ==========================================================
-- Plugin configuration
-- ==========================================================

-- UI
require('config/dashboard-nvim')
require('config/vim-which-key')
require('config/nvim-tree')
require('config/telescope')
require('config/nvim-scrollview')

-- Editting Utilities
require('lsp')
require('config/nvim-compe')
require('config/vim-vsnip')
-- require('config/LuaSnip')
-- require('config/ultisnips')
require('config/nvim-comment')
require('config/indent-blankline')
require('config/vim-better-whitespace')
require('config/undotree')
require('config/tagalong')
-- require('config/ale')

-- Git Tools
require('config/gitsigns')
require('config/neogit')

-- Misc.
require('config/floatterm')
require('config/undotree')
require('config/todo-comments')
require('config/vim-instant-markdown')
require('config/bracey-vim')
require('config/plantuml-previewer-vim')

-- require('config/galaxyline')
-- require('config/julia')
-- require('config/vimtex')

-- ==========================================================
-- Key mappings
-- ==========================================================
require('keymappings')

-- ==========================================================
-- Misc.
-- ==========================================================
-- require('weather').init()

