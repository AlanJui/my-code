if DEBUG then print('Loading plugins...') end
-----------------------------------------------------------
-- Plugin Manager: install plugins
-----------------------------------------------------------

-- auto install packer if not installed
local ensure_packer = function ()
    local fn = vim.fn
    -- local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    local install_path = INSTALL_PATH
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({
            'git',
            'clone',
            '--depth',
            '1',
            'https://github.com/wbthomason/packer.nvim',
            install_path,
        })
        vim.cmd([[packadd packer.nvim]])
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer() -- true if packer was just installed

-- autocommand that reloads neovim and installs/updates/removes plugins
-- when file is saved
vim.cmd([[
    augroup packer_user_config
        autocmd!
        autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
]])

-- import packer safely
local status, packer = pcall(require, 'packer')
if not status then
    return
end

if DEBUG then
    print('PACKAGE_ROOT=', PACKAGE_ROOT)
    print('INSTALL_PATH=', INSTALL_PATH)
    print('COMPILE_PATH=', COMPILE_PATH)
    print('packer_bootstrap=', packer_bootstrap)
end

packer.init({
    package_root = PACKAGE_ROOT,
    compile_path = COMPILE_PATH,
    plugin_package = 'packer',
})

-- add list of plugins to install
return packer.startup(function(use)
    -----------------------------------------------------------
    -- Essential plugins
    -----------------------------------------------------------

    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- Tools to migrating init.vim to init.lua
    use 'norcalli/nvim_utils'

    -----------------------------------------------------------
    -- LSP/LspInstaller: configurations for the Nvim LSP client
    -----------------------------------------------------------

    -- companion plugin for nvim-lspconfig that allows you to seamlessly
    -- install LSP servers locally
    use {
        'williamboman/nvim-lsp-installer',
        -- config = [[ require('config.nvim-lsp-installer') ]]
    }

    -- A collection of common configurations for Neovim's built-in language
    -- server client
    use {
        'neovim/nvim-lspconfig',
        -- config = [[ require('config.nvim-lspconfig') ]]
    }

    -- vscode-like pictograms for neovim lsp completion items Topics
    -- use {
    --     'onsails/lspkind-nvim',
    --     config = [[ require('config.lspkind') ]]
    -- }

    -- Utility functions for getting diagnostic status and progress messages
    -- from LSP servers, for use in the Neovim statusline
    use {
        'nvim-lua/lsp-status.nvim',
        config = [[ require('config.lspstatus') ]]
    }

    -- Support LSP CodeAction
    use {
        'kosayoda/nvim-lightbulb',
        config = [[ require('config.nvim-lightbulb') ]]
    }

    -- LSP plugin based on Neovim build-in LSP with highly a performant UI
    -- use {
    --     'glepnir/lspsaga.nvim',
    --     requires = { 'neovim/nvim-lspconfig' },
    --     config = [[ require('config.lspsaga-nvim') ]]
    -- }

    -----------------------------------------------------------
    -- Completion: for auto-completion/suggestion/snippets
    -----------------------------------------------------------

    -- A completion plugin for neovim coded in Lua.
    use {
        'hrsh7th/nvim-cmp',
        requires = {
            -- nvim-cmp source for neovim builtin LSP client
            'hrsh7th/cmp-nvim-lsp',
            -- nvim-cmp source for nvim lua
            'hrsh7th/cmp-nvim-lua',
            -- nvim-cmp source for buffer words
            'hrsh7th/cmp-buffer',
            -- nvim-cmp source for filesystem paths
            'hrsh7th/cmp-path',
            -- nvim-cmp source for math calculation
            'hrsh7th/cmp-calc',
            'hrsh7th/cmp-emoji',
            'hrsh7th/cmp-cmdline',

            -- LuaSnip completion source for nvim-cmp
            'saadparwaiz1/cmp_luasnip',
        },
        -- config = [[ require('auto-cmp.nvim-cmp') ]]
    }

    -- -- Snippet Engine for Neovim written in Lua.
    use {
        'L3MON4D3/LuaSnip',
        requires = {
            -- Snippets collection for a set of different programming languages for faster development
            'rafamadriz/friendly-snippets',
        },
        -- config = [[ require('auto-cmp.luasnip') ]]
    }

    -----------------------------------------------------------
    -- Treesitter: for better syntax
    -----------------------------------------------------------

    -- Nvim Treesitter configurations and abstraction layer
    use {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        -- config = [[ require('config.treesitter') ]]
        config = [[ require('config.nvim-treesitter') ]]
    }
    -- Additional textobjects for treesitter
    use 'nvim-treesitter/nvim-treesitter-textobjects'

    -----------------------------------------------------------
    -- User Interface
    -----------------------------------------------------------

    -- colorscheme for neovim written in lua specially made for roshnvim
    use 'shaeinst/roshnivim-cs'
    use 'mhartington/oceanic-next'
    use 'bluz71/vim-moonfly-colors'
    use 'bluz71/vim-nightfly-guicolors'
    use 'folke/tokyonight.nvim'

    -- Icons
    use {
        'kyazdani42/nvim-web-devicons',
        config = [[ require('config.nvim-web-devicons') ]]
    }
    -- use {
    --     'yamatsum/nvim-nonicons',
    --     requires = { 'kyazdani42/nvim-web-devicons' }
    -- }

    -- Fuzzy files finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {
            { 'nvim-lua/plenary.nvim', },
            { 'nvim-telescope/telescope-live-grep-raw.nvim' },
        },
        config = [[ require('config.telescope-nvim') ]]
    }

    -- File/Flolders explorer:nvim-tree
    use {
        'kyazdani42/nvim-tree.lua',
        requires = 'kyazdani42/nvim-web-devicons',
        config = [[ require('config.nvim-tree') ]]
    }

    -- Status Line
    use {
        'nvim-lualine/lualine.nvim',
        requires = {'kyazdani42/nvim-web-devicons', opt = true},
        config = [[ require('config.lualine.material') ]]
        -- config = [[ require('config.lualine.bubbles') ]]
        -- config = [[ require('config.lualine.lualine-nvim') ]]
    }
    use {
        'arkav/lualine-lsp-progress',
        -- config = [[ require('config.lualine.lualine-lsp-progress') ]]
    }
    use {
        'kdheepak/tabline.nvim',
        require = {
            'hoob3rt/lualine.nvim',
            'kyazdani42/nvim-web-devicons'
        },
        config = function ()
            require('tabline').setup({ enable = false })
        end
    }

    -- Screen Navigation
    use {
        'folke/which-key.nvim',
        config = function ()
            require('config.which-key')
        end
        -- 'liuchengxu/vim-which-key',
        -- config = function ()
        --     if vim.inspect(package.loaded) then
        --         require('config.vim-which-key')
        --     end
        -- end
    }

    -----------------------------------------------------------
    -- Git Tools
    -----------------------------------------------------------

    -- Git commands in nvim
    use 'tpope/vim-fugitive'

    -- Fugitive-companion to interact with github
    use 'tpope/vim-rhubarb'

    -- Add git related info in the signs columns and popups
    use {
        'lewis6991/gitsigns.nvim',
        requires = { 'nvim-lua/plenary.nvim' },
        config = function ()
            require('gitsigns').setup()
        end
    }

    -- A work-in-progress Magit clone for Neovim that is geared toward the Vim philosophy.
    use {
        'TimUntersberger/neogit',
        requires = {
            'nvim-lua/plenary.nvim',
            'sindrets/diffview.nvim',
        },
        config = [[ require('config.neogit') ]]
    }

    -- for creating gist
    -- Personal Access Token: ~/.gist-vim
    -- token XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
    use {
        'mattn/vim-gist',
        requires = 'mattn/webapi-vim',
        config = vim.cmd([[
            let g:gist_clip_command = 'xclip -selection clipboard'
            let g:gist_open_browser_after_post = 1
            let g:github_user = 'AlanJui'
        ]])
    }

    -----------------------------------------------------------
    -- Editting Tools
    -----------------------------------------------------------

    -- surroundings: parentheses, brackets, quotes, XML tags, and more
    use {
        'tpope/vim-surround',
        requires = { 'tpope/vim-repeat' }
    }

    -- Toggle comments in Neovim
    use { 'tpope/vim-commentary' }
    -- use {
    --     'terrortylor/nvim-comment',
    --     -- config = [[ require('config.nvim-comment') ]]
    --     config = function ()
    --         require('nvim_comment').setup()
    --     end
    -- }

    -- Causes all trailing whitespace characters to be highlighted
    use {
        'ntpeters/vim-better-whitespace',
        config = vim.cmd([[
            runtime ./lua/plugins/vim-better-whitespace.rc.vim
        ]])
    }

    -- Add indentation guides even on blank lines
    -- use {
    --     'lukas-reineke/indent-blankline.nvim',
    --     config = [[ require('config.indent-blankline') ]]
    -- }

    -- Auto close parentheses and repeat by dot dot dot ...
    -- use 'jiangmiao/auto-pairs'
    use {
        'windwp/nvim-autopairs',
        config = [[ require('config.autopairs') ]]
    }

    -- Multiple cursor editting
    -- use 'mg979/vim-visual-multi'

    -- visualizes undo history and makes it easier to browse and switch between different undo branches
    use {
        'mbbill/undotree',
        config = [[ require('config.undotree') ]]
    }

    -- HTML
    ---------------------------------------------------------------

    -- provides support for expanding abbreviations similar to emmet
    use {
        'mattn/emmet-vim',
        config = vim.cmd([[
            runtime ./lua/plugins/emmet-vim.rc.vim
        ]])
    }

    -- Auto close tag
    use {
        'alvan/vim-closetag',
        config = vim.cmd([[
            runtime ./lua/plugins/vim-closetag.rc.vim
        ]])
    }

    -- Auto change html tags
    use {
        'AndrewRadev/tagalong.vim',
        config = vim.cmd([[
            runtime ./lua/plugins/tagalong-vim.rc.vim
        ]])
    }

    -- Use treesitter to autoclose and autorename HTML tag
    -- use {
    --     'windwp/nvim-ts-autotag',
    --     config = [[ require('config.nvim-ts-autotag') ]]
    -- }

    -- Python
    ---------------------------------------------------------------
    -- ALE (Asynchronous Lint Engine) is a plugin providing linting (syntax
    -- checking and semantic errors) in NeooVim while you edit your text files,
    -- and acts as a Vim Language Server Protocol client.
    use {
        'dense-analysis/ale',
        config = vim.cmd([[
            runtime ./lua/plugins/ale.rc.vim
        ]])
    }

    --  Modifies Vim’s indentation behavior to comply with PEP8 and my aesthetic preferences.
    use 'Vimjas/vim-python-pep8-indent'

    -- Python: provides text objects and motions for Python classes, methods,
    -- functions and doc strings
    use 'jeetsukumaran/vim-pythonsense'

    -----------------------------------------------------------
    -- DAP
    -----------------------------------------------------------
    use { 'mfussenegger/nvim-dap' }
    -- nvim-dap’s functionality for managing various debuggers.
    use { 'Pocco81/DAPInstall.nvim' }
    -- nvim-dap tools and UIs
    use { 'nvim-telescope/telescope-dap.nvim' }
    use { 'theHamsta/nvim-dap-virtual-text', }
    use {
        'rcarriga/nvim-dap-ui',
        requires = { 'mfussenegger/nvim-dap' },
    }
    -- -- nvim-dap unit test tools
    -- use {
    --     "rcarriga/vim-ultest",
    --     requires = {"vim-test/vim-test"},
    --     run = ":UpdateRemotePlugins",
    --     config = [[ require('config.ultest').post() ]],
    -- }
    -- -- DAP adapter for Python
    -- use { 'mfussenegger/nvim-dap-python' }
    -- -- DAP adapter for the Neovim lua language
    -- use {
    --     'jbyuki/one-small-step-for-vimkind',
    --     -- config = [[ require('config.one-small-step-for-vimkind') ]],
    -- }

    -----------------------------------------------------------
    -- Utility
    -----------------------------------------------------------

    -- Floater Terminal
    use 'voldikss/vim-floaterm'

    -- highlight your todo comments in different styles
    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function ()
            require('todo-comments').setup({
                -- configuration comes here
                -- or leave it empty to use the default setting
            })
        end
    }

    -- Live server
    use 'turbio/bracey.vim'

    -- Markdown preview
    use {
        'instant-markdown/vim-instant-markdown',
        config = vim.cmd([[
            runtime ./lua/plugins/vim-instant-markdown.rc.vim
        ]])
    }

    -- PlantUML
    use {
        'weirongxu/plantuml-previewer.vim',
        config = vim.cmd([[
            runtime ./lua/plugins/plantuml-previewer.rc.vim
        ]])
    }

    -- PlantUML syntax highlighting
    use 'aklt/plantuml-syntax'

    -- Open URI with your favorite browser from your most favorite editor
    use 'tyru/open-browser.vim'

    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        packer.sync()
    end
end)
