require('plugins')
require('general')

-- Appearance
-- ============================================================================

 require('appearence')

-- Local plugins
-- =============================================================================

-- require('weather').init()

-- Configuration of the plugins
-- ============================================================================


require('lsp')

require('config/indent-blankline')
require('config/vim-better-whitespace')
require('config/dashboard-nvim')
require('config/nvim-tree')
require('config/telescope')
require('config/gitsigns')
require('config/floatterm')
require('config/nvim-compe')
require('config/LuaSnip')
-- require('config/ultisnips')
-- require('config/vim-which-key')
-- require('config/undotree')
-- require('config/todo-comments')
-- require('config/galaxyline')
-- require('config/julia')
-- require('config/nvim-comment')
-- require('config/nvim-scrollview')
-- require('config/vimtex')

-- Key mappings
-- ============================================================================

require('keymappings')
