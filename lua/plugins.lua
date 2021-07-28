-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

vim.api.nvim_exec(
  [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]],
  false
)

local use = require('packer').use
require('packer').startup(function()
  -- Package manager
  use 'wbthomason/packer.nvim'
  -- Nvim 0.5 Libs
  use 'nvim-lua/plenary.nvim'
  -- ===========================================================
  -- UI
  -- ===========================================================
  -- Themes
  use 'joshdick/onedark.vim' -- Theme inspired by Atom
  use 'Th3Whit3Wolf/one-nvim'
  -- Status Line
  use 'itchyny/lightline.vim' -- Fancier statusline
  -- Screnn Navigation
  use 'glepnir/dashboard-nvim'
  use 'liuchengxu/vim-which-key'
  -- File/Flolders explorer
  use 'kyazdani42/nvim-tree.lua'
  use 'kyazdani42/nvim-web-devicons'
  -- UI to select things (files, grep results, open buffers...)
  use { 'nvim-telescope/telescope.nvim', requires = { { 'nvim-lua/popup.nvim' }, { 'nvim-lua/plenary.nvim' } } }
  -- Displays interactive scrollbars
  use 'dstein64/nvim-scrollview'
  -- Highlight, edit, and navigate code using a fast incremental parsing library
  use 'nvim-treesitter/nvim-treesitter'
  -- Additional textobjects for treesitter
  use 'nvim-treesitter/nvim-treesitter-textobjects'

  -- ===========================================================
  -- Editting Utilities
  -- ===========================================================
  -- LSP
  use 'neovim/nvim-lspconfig' -- Collection of configurations for built-in LSP client
  use 'hrsh7th/nvim-compe' -- Autocompletion plugin
  -- Snippets
  use 'rafamadriz/friendly-snippets'
  use 'hrsh7th/vim-vsnip'
  use 'hrsh7th/vim-vsnip-integ'
  -- use 'L3MON4D3/LuaSnip' -- Snippets plugin
  -- Toggle comments in Neovim
  use 'terrortylor/nvim-comment'
  -- "gc" to comment visual regions/lines
  -- use 'tpope/vim-commentary'
  -- Add indentation guides even on blank lines
  use 'lukas-reineke/indent-blankline.nvim'
  -- causes all trailing whitespace characters to be highlighted
  use 'ntpeters/vim-better-whitespace'
  -- Auto close parentheses and repeat by dot dot dot...
  use 'jiangmiao/auto-pairs'
  -- visualizes undo history and makes it easier to browse and switch between different undo branches
  use 'mbbill/undotree'

  -- ===========================================================
  -- Git Tools
  -- ===========================================================
  -- Add git related info in the signs columns and popups
  use { 'lewis6991/gitsigns.nvim', requires = { 'nvim-lua/plenary.nvim' } }
  -- Git commands in nvim
  use 'tpope/vim-fugitive'
  -- Fugitive-companion to interact with github
  use 'tpope/vim-rhubarb'
  -- A work-in-progress Magit clone for Neovim that is geared toward the Vim philosophy.
  use { 'TimUntersberger/neogit', requires = 'nvim-lua/plenary.nvim' }


  -- ===========================================================
  -- Misc.
  -- ===========================================================
  -- Automatic tags management
  use 'ludovicchabant/vim-gutentags'
  -- Terminal
  use 'voldikss/vim-floaterm'
  -- highlight your todo comments in different styles
  use 'folke/todo-comments.nvim'
end)
