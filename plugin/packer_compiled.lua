-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/alanjui/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/alanjui/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/alanjui/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/alanjui/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/alanjui/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["DAPInstall.nvim"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/DAPInstall.nvim",
    url = "https://github.com/Pocco81/DAPInstall.nvim"
  },
  LuaSnip = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ale = {
    config = { "" },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/ale",
    url = "https://github.com/dense-analysis/ale"
  },
  ["bracey.vim"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/bracey.vim",
    url = "https://github.com/turbio/bracey.vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-calc"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/cmp-calc",
    url = "https://github.com/hrsh7th/cmp-calc"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-emoji"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/cmp-emoji",
    url = "https://github.com/hrsh7th/cmp-emoji"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lua"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  cmp_luasnip = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["diffview.nvim"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["emmet-vim"] = {
    config = { "" },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/emmet-vim",
    url = "https://github.com/mattn/emmet-vim"
  },
  ["friendly-snippets"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lsp-status.nvim"] = {
    config = { " require('config.lspstatus') " },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/lsp-status.nvim",
    url = "https://github.com/nvim-lua/lsp-status.nvim"
  },
  ["lualine-lsp-progress"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/lualine-lsp-progress",
    url = "https://github.com/arkav/lualine-lsp-progress"
  },
  ["lualine.nvim"] = {
    config = { " require('config.lualine.material') " },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  neogit = {
    config = { " require('config.neogit') " },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nvim-autopairs"] = {
    config = { " require('config.autopairs') " },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-dap"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-dap-virtual-text"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim-dap-virtual-text",
    url = "https://github.com/theHamsta/nvim-dap-virtual-text"
  },
  ["nvim-lightbulb"] = {
    config = { " require('config.nvim-lightbulb') " },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim-lightbulb",
    url = "https://github.com/kosayoda/nvim-lightbulb"
  },
  ["nvim-lsp-installer"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    config = { " require('config.nvim-tree') " },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    config = { " require('config.nvim-treesitter') " },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    config = { " require('config.nvim-web-devicons') " },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  nvim_utils = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/nvim_utils",
    url = "https://github.com/norcalli/nvim_utils"
  },
  ["oceanic-next"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/oceanic-next",
    url = "https://github.com/mhartington/oceanic-next"
  },
  ["open-browser.vim"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/open-browser.vim",
    url = "https://github.com/tyru/open-browser.vim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plantuml-previewer.vim"] = {
    config = { "" },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/plantuml-previewer.vim",
    url = "https://github.com/weirongxu/plantuml-previewer.vim"
  },
  ["plantuml-syntax"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/plantuml-syntax",
    url = "https://github.com/aklt/plantuml-syntax"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["roshnivim-cs"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/roshnivim-cs",
    url = "https://github.com/shaeinst/roshnivim-cs"
  },
  ["tabline.nvim"] = {
    config = { "\27LJ\2\nD\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\venable\1\nsetup\ftabline\frequire\0" },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/tabline.nvim",
    url = "https://github.com/kdheepak/tabline.nvim"
  },
  ["tagalong.vim"] = {
    config = { "" },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/tagalong.vim",
    url = "https://github.com/AndrewRadev/tagalong.vim"
  },
  ["telescope-dap.nvim"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/telescope-dap.nvim",
    url = "https://github.com/nvim-telescope/telescope-dap.nvim"
  },
  ["telescope-live-grep-raw.nvim"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/telescope-live-grep-raw.nvim",
    url = "https://github.com/nvim-telescope/telescope-live-grep-raw.nvim"
  },
  ["telescope.nvim"] = {
    config = { " require('config.telescope-nvim') " },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["todo-comments.nvim"] = {
    config = { "\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0" },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/todo-comments.nvim",
    url = "https://github.com/folke/todo-comments.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  },
  undotree = {
    config = { " require('config.undotree') " },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/undotree",
    url = "https://github.com/mbbill/undotree"
  },
  ["vim-better-whitespace"] = {
    config = { "" },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-better-whitespace",
    url = "https://github.com/ntpeters/vim-better-whitespace"
  },
  ["vim-closetag"] = {
    config = { "" },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-closetag",
    url = "https://github.com/alvan/vim-closetag"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-commentary",
    url = "https://github.com/tpope/vim-commentary"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-floaterm",
    url = "https://github.com/voldikss/vim-floaterm"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-gist"] = {
    config = { "" },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-gist",
    url = "https://github.com/mattn/vim-gist"
  },
  ["vim-instant-markdown"] = {
    config = { "" },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-instant-markdown",
    url = "https://github.com/instant-markdown/vim-instant-markdown"
  },
  ["vim-moonfly-colors"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-moonfly-colors",
    url = "https://github.com/bluz71/vim-moonfly-colors"
  },
  ["vim-nightfly-guicolors"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-nightfly-guicolors",
    url = "https://github.com/bluz71/vim-nightfly-guicolors"
  },
  ["vim-python-pep8-indent"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-python-pep8-indent",
    url = "https://github.com/Vimjas/vim-python-pep8-indent"
  },
  ["vim-pythonsense"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-pythonsense",
    url = "https://github.com/jeetsukumaran/vim-pythonsense"
  },
  ["vim-repeat"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  },
  ["vim-surround"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["webapi-vim"] = {
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/webapi-vim",
    url = "https://github.com/mattn/webapi-vim"
  },
  ["which-key.nvim"] = {
    config = { "\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.which-key\frequire\0" },
    loaded = true,
    path = "/Users/alanjui/.local/share/my-code/site/pack/packer/start/which-key.nvim",
    url = "https://github.com/folke/which-key.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: todo-comments.nvim
time([[Config for todo-comments.nvim]], true)
try_loadstring("\27LJ\2\n?\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\18todo-comments\frequire\0", "config", "todo-comments.nvim")
time([[Config for todo-comments.nvim]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\n6\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: plantuml-previewer.vim
time([[Config for plantuml-previewer.vim]], true)

time([[Config for plantuml-previewer.vim]], false)
-- Config for: nvim-lightbulb
time([[Config for nvim-lightbulb]], true)
 require('config.nvim-lightbulb') 
time([[Config for nvim-lightbulb]], false)
-- Config for: undotree
time([[Config for undotree]], true)
 require('config.undotree') 
time([[Config for undotree]], false)
-- Config for: vim-better-whitespace
time([[Config for vim-better-whitespace]], true)

time([[Config for vim-better-whitespace]], false)
-- Config for: lsp-status.nvim
time([[Config for lsp-status.nvim]], true)
 require('config.lspstatus') 
time([[Config for lsp-status.nvim]], false)
-- Config for: vim-closetag
time([[Config for vim-closetag]], true)

time([[Config for vim-closetag]], false)
-- Config for: nvim-tree.lua
time([[Config for nvim-tree.lua]], true)
 require('config.nvim-tree') 
time([[Config for nvim-tree.lua]], false)
-- Config for: tabline.nvim
time([[Config for tabline.nvim]], true)
try_loadstring("\27LJ\2\nD\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\venable\1\nsetup\ftabline\frequire\0", "config", "tabline.nvim")
time([[Config for tabline.nvim]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
 require('config.lualine.material') 
time([[Config for lualine.nvim]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
 require('config.nvim-treesitter') 
time([[Config for nvim-treesitter]], false)
-- Config for: neogit
time([[Config for neogit]], true)
 require('config.neogit') 
time([[Config for neogit]], false)
-- Config for: emmet-vim
time([[Config for emmet-vim]], true)

time([[Config for emmet-vim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
 require('config.autopairs') 
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-web-devicons
time([[Config for nvim-web-devicons]], true)
 require('config.nvim-web-devicons') 
time([[Config for nvim-web-devicons]], false)
-- Config for: which-key.nvim
time([[Config for which-key.nvim]], true)
try_loadstring("\27LJ\2\n0\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\21config.which-key\frequire\0", "config", "which-key.nvim")
time([[Config for which-key.nvim]], false)
-- Config for: vim-instant-markdown
time([[Config for vim-instant-markdown]], true)

time([[Config for vim-instant-markdown]], false)
-- Config for: vim-gist
time([[Config for vim-gist]], true)

time([[Config for vim-gist]], false)
-- Config for: ale
time([[Config for ale]], true)

time([[Config for ale]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
 require('config.telescope-nvim') 
time([[Config for telescope.nvim]], false)
-- Config for: tagalong.vim
time([[Config for tagalong.vim]], true)

time([[Config for tagalong.vim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
