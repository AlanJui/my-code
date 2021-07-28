-- =========================================================================
-- Plugins
-- =========================================================================
require('plugins')

-- =========================================================================
-- Generanl (Gobal) setting
-- =========================================================================
require('general')

-- =========================================================================
-- Appearance
-- =========================================================================
 require('appearence')

-- =========================================================================
-- Plugin configuration
-- =========================================================================

-- UI
require('config/dashboard-nvim')
require('config/vim-which-key')
require('config/nvim-tree')
require('config/telescope')

-- Editting Utilities
require('lsp')
require('config/nvim-compe')
require('config/vim-vsnip')
-- require('config/LuaSnip')
-- require('config/ultisnips')
require('config/indent-blankline')
require('config/vim-better-whitespace')

-- Git Tools
require('config/gitsigns')

-- Misc.
require('config/floatterm')
-- require('config/undotree')
-- require('config/todo-comments')
-- require('config/galaxyline')
-- require('config/julia')
-- require('config/nvim-comment')
-- require('config/nvim-scrollview')
-- require('config/vimtex')

-- =========================================================================
-- Key mappings
-- =========================================================================
require('keymappings')

-- =========================================================================
-- Misc.
-- =========================================================================
-- require('weather').init()

