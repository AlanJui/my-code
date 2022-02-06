-----------------------------------------------------------
-- Startup
-----------------------------------------------------------
DEBUG = false
-- DEBUG = true

if DEBUG then print('===== Begin of loading init.lua... =====') end
-----------------------------------------------------------
-- Global Functions
-----------------------------------------------------------
vim.api.nvim_command('luafile ~/.config/my-code/lua/globals.lua')

-----------------------------------------------------------
-- Initial environment
-----------------------------------------------------------
vim.api.nvim_command('luafile ~/.config/my-code/lua/init-env.lua')

-----------------------------------------------------------
-- Setup runtimepath: stdpath('config'), stdpath('data')
-----------------------------------------------------------
vim.api.nvim_command('luafile ~/.config/my-code/lua/setup-rtp.lua')

-----------------------------------------------------------
-- Essential configuration on development init.lua
-----------------------------------------------------------
require('essential')
require('nvim_utils')

-----------------------------------------------------------
-- Plugin Manager: install plugins
-----------------------------------------------------------
require('plugins')

-----------------------------------------------------------
-- Configurations for Neovim
-----------------------------------------------------------
require('options')

-----------------------------------------------------------
-- Color Themes
-----------------------------------------------------------
require('color-themes')

-----------------------------------------------------------
-- Key bindings
-----------------------------------------------------------
-- Load Shortcut Key
require('keymaps')

-- Load Which-key
require('config/which-key')

-----------------------------------------------------------
-- Experiments
-----------------------------------------------------------
-- require('dbg')

if DEBUG then print('===== End of loading init.lua... =====') end
