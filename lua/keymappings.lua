-- ========================================================================
-- Keybindings
-- ========================================================================

-- 個人用
-- ------------------------------------------------------------------------

local map = vim.api.nvim_set_keymap
local opts = {silent=true, noremap=true}

vim.g.maplocalleader = ','

map('i', 'jj',              '<Esc>',                                    opts)
map('n', 'H',               '0',                                        opts)
map('n', 'L',               '$',                                        opts)
map('n', 'X',               'd$',                                       opts)
map('n', 'Y',               'y$',                                       opts)

map('n', '<LocalLeader>ci', ':e ~/.config/nvim/init.lua<CR>',           opts)
map('n', '<LocalLeader>cI', ':source %<CR>',                            opts)
map('n', '<C-r><C-r>',      ':source %<CR>',                            opts)
map('n', '<LocalLeader>ck', ':e ~/.config/nvim/lua/keymappings.lua<CR>',opts)
map('n', '<C-s>',           ':w!<CR>',                                  opts)
map('n', '<C-q>',           ':q!<CR>',                                  opts)

map('n', '\\',              ':NvimTreeToggle<CR>',                      opts)
map('n', '<LocalLeader>t',  ':FloatermNew<CR>',                         opts)
map('n', '<LocalLeader>ff', ':Telescope find_files<CR>',                opts)
map('n', '<LocalLeader>fb', ':Telescope buffers<CR>',                   opts)
map('n', '<LocalLeader>fg', ':Telescope live_grep<CR>',                 opts)
map('n', '<LocalLeader>fh', ':Telescope help_tags<CR>',                 opts)

-- 搬移整行文字
map('n', '<A-j>', ':m .+1<CR>', { noremap=true })
map('n', '<A-k>', ':m .-2<CR>', { noremap=true })
vim.api.nvim_exec(
[[
imap <A-j> <Esc>:m .+1<CR>
imap <A-k> <Esc>:m .-2<CR>
vmap <A-j> :m '>+1<CR>
vmap <A-k> :m '<-2<CR>
]],
false)

map('n', '<C-\\>', ':CommentToggle<CR>', { noremap=true })
map('v', '<C-\\>', ':CommentToggle<CR>', { noremap=true })

-- Cursor movement
-- ------------------------------------------------------------------------

map('n', '<up>',   'gk',           {silent = true, noremap = true})
map('n', '<down>', 'gj',           {silent = true, noremap = true})
map('n', '<home>', 'g<Home>',      {silent = true, noremap = true})
map('n', '<end>',  'g<End>',       {silent = true, noremap = true})
map('i', '<up>',   '<C-o>gk',      {silent = true, noremap = true})
map('i', '<down>', '<C-o>gj',      {silent = true, noremap = true})
map('i', '<home>', '<C-o>g<Home>', {silent = true, noremap = true})
map('i', '<end>',  '<C-o>g<End>',  {silent = true, noremap = true})

--Remap for dealing with word wrap
vim.api.nvim_set_keymap('n', 'k', "v:count == 0 ? 'gk' : 'k'", { noremap = true, expr = true, silent = true })
vim.api.nvim_set_keymap('n', 'j', "v:count == 0 ? 'gj' : 'j'", { noremap = true, expr = true, silent = true })

-- Function keys
-- ------------------------------------------------------------------------

map('n', '<F5>', ':FloatermNew<CR>', {silent = true})


-- ========================================================================
-- WhichKey Configuration
-- ========================================================================

-- Leader configuration
-- ------------------------------------------------------------------------

map('n', '<Space>', '<NOP>', {noremap = true, silent = true})
vim.g.mapleader = ' '

-- Prefix: <leader>
-- -----------------------------------------------------------------------------

map('n', '<Leader>', [[:<C-u>WhichKey "<space>"<CR>]], {silent = true})
map('v', '<Leader>', [[:<C-u>WhichKeyVisual "<space>"<CR>]], {silent = true})
vim.call('which_key#register', '<Space>', 'g:which_key_leader')

map('n', '<Leader><Up>', '<C-w>k', {silent = true})
map('n', '<Leader><Down>', '<C-w>j', {silent = true})
map('n', '<Leader><Left>', '<C-w>h', {silent = true})
map('n', '<Leader><Right>', '<C-w>l', {silent = true})
map('n', '<Leader>sl', ':<C-u>SessionLoad<CR>', {})
map('n', '<Leader>ss', ':<C-u>SessionSave<CR>', {})

-- Prefix: g
-- ------------------------------------------------------------------------

map('n', 'ga', '<Plug>(EasyAlign)', {})
map('x', 'ga', '<Plug>(EasyAlign)', {})

-- Prefix: s
-- ------------------------------------------------------------------------

map('n', 's', [[:<C-u>WhichKey "s"<CR>]], {silent = true})
vim.call('which_key#register', 's', 'g:which_key_s')

map('n', 'sl', ':HopLine<CR>', {silent = true})
map('n', 'ss', ':HopChar2<CR>', {silent = true})
map('n', 'sw', ':HopWord<CR>',  {silent = true})

-- Normal mode (mappings without prefix)
-- ------------------------------------------------------------------------

-- Clear highlighting on escale in normal mode.
map('n', '<Esc>', ':noh<CR><Esc>', {silent = true, noremap = true})

-- Insert mode
-- ------------------------------------------------------------------------

-- Call auto-complete with `<C-n>` and `<C-p>`.
map('i', '<C-n>', 'compe#complete()', {noremap = true, expr = true})
map('i', '<C-p>', 'compe#complete()', {noremap = true, expr = true})

-- Remap keys that open floaterm.
map('i', '<F1>', '<ESC><F1>', {noremap = false})
map('i', '<F2>', '<ESC><F2>', {noremap = false})
map('i', '<F3>', '<ESC><F3>', {noremap = false})
map('i', '<F4>', '<ESC><F4>', {noremap = false})

-- Visual mode
-- ------------------------------------------------------------------------

-- Move selected line / block of text in visual mode
map('x', '<S-Up>',   ':move \'<-2<CR>gv-gv', {noremap = true, silent = true})
map('x', '<S-Down>', ':move \'>+1<CR>gv-gv', {noremap = true, silent = true})

-- Terminal mode
-- ------------------------------------------------------------------------

map('t', '<Esc>', '<C-\\><C-n>', {noremap = true, silent = true})

-- WhichKey
-- ------------------------------------------------------------------------

vim.g.which_key_leader = {
  ['name']    = '',
  [' ']       = {':Telescope find_files', 'File manager'},
  [',']       = {':Telescope buffers', 'Show buffers'},
  [';']       = {':FloatermNew --wintype=normal --height=10', 'Terminal pane'},
  ['<Up>']    = 'Up window',
  ['<Down>']  = 'Down window',
  ['<Left>']  = 'Left window',
  ['<Right>'] = 'Right window',
  ['z']       = {'UndotreeToggle', 'Undo tree'},

  -- Submenus
  -- ----------------------------------------------------------------------

  -- Actions
  ['a'] = {
    ['name'] = '+actions',
    ['h']    = {':let @/ = ""', 'remove search highlight'},
    ['t']    = {':set filetype=htmldjango', 'set file type to django template'},
    ['T']    = {':set filetype=html', 'set file type to HTML'},
    ['d']    = {'<Cmd>lua vim.lsp.buf.declaration()', 'go to definition'},
    ['D']    = {'<Cmd>lua vim.lsp.buf.declaration()', 'go to declaration'},
    ['q']    = {'<Cmd>lua vim.lsp.diagnostic.set_loclist()', 'lint code'},
    ['f']    = {'<Cmd>lua vim.lsp.buf.formatting()', 'format code'},
    ['l']    = {':set wrap!', 'on/off line wrap'},
    ['n']    = {'set nonumber!', 'on/off line-numbers'},
    ['N']    = {'set norelativenumber!', 'on/off relative line-numbers'},
    ['w']    = {':StripWhitespace', 'strip whitespace'},
  },

  -- Buffer
  ['b'] = {
    ['name'] = '+buffer',
    ['c']    = {'BufferClose', 'Close buffer'},
    ['C']    = {'BufferCloseAllButCurrent', 'Close all but current'},
    ['d']    = {'bdelete', 'Delete buffer'},
    ['p']    = {'BufferPick', 'Buffer pick'},
    ['s']    = {':setlocal spell!', 'Toggle spell'},
    ['w']    = {':StripWhitespace', 'Strip white space'},
    ['W']    = {':ToggleWhitespace', 'Toggle white space'},
    ['[']    = {'BufferPrevious', 'Prev. buffer'},
    [']']    = {'BufferNext', 'Next buffer'}
  },

  -- File
  ['f'] = {
    ['name'] = '+file',
    ['a']    = {':Telescope live_grep', 'Find word'},
    ['b']    = {':Telescope marks', 'Bookmarks'},
    ['f']    = {':Telescope find_files', 'Find files'},
    ['h']    = {':Telescope oldfiles', 'History'},
  },

  -- Git
  ['g'] = {
    ['name'] = '+git',
    ['a']    = {':Git add .', 'add all' },
    ['b']    = {':Git blame', 'blame' },
    ['B']    = {':GBrowse', 'github browse' },
    ['c']    = {':Git commit', 'commit' },
    ['d']    = {':Git diff', 'diff' },
    ['D']    = {':Gdiffsplit', 'diff split' },
    ['g']    = {':GGrep', 'git grep' },
    ['l']    = {':Git log', 'post gist' },
    ['p']    = {':Git push', 'push' },
    ['P']    = {':Git pull', 'pull' },
    ['r']    = {':GRemove', 'remove' },
    ['s']    = {':Git', 'status'},
    ['t']    = {':GitGutterSignsToggle', 'toggle signs' },
    ['v']    = {':GV', 'view commits' },
    ['V']    = {':GV!', 'view buffer commits' },
  },

  -- Gist
  ['G'] = {
    ['name'] = '+gist',
    ['a']    = {':Gist -a', 'post gist anon' },
    ['b']    = {':Gist -b', 'post gist browser' },
    ['d']    = {':Gist -d', 'delete gist' },
    ['e']    = {':Gist -e', 'edit gist' },
    ['l']    = {':Gist -l', 'list public gists' },
    ['s']    = {':Gist -ls', 'list starred gists' },
    ['m']    = {':Gist -m', 'post gist all buffers' },
    ['p']    = {':Gist -p', 'post public gist' },
    ['P']    = {':Gist -P', 'post private gist' },
  },

  -- Bookmark
  ['m'] = {
    ['name'] = '+bookmark',
    ['m']    = {':BookmarkToggle', 'Toogle bookmark'},
    ['i']    = {':BookmarkAnnotate', 'Annotate bookmark'},
    ['n']    = {':BookmarkNext', 'Next bookmark'},
    ['p']    = {':BookmarkPrev', 'Prev. bookmark'},
  },

  -- Session
  ['s'] = {
    ['name'] = '+session',
    ['l']    = 'Load session',
    ['s']    = 'Save session'
  },

  ['t'] = {
    ['name'] = '+text',
    ['c']    = {
      ['name'] = '+align comments',
      ['l']    = {":call v:lua.require('utils/align_comment').align_comments('l')", 'To the left'},
      ['c']    = {":call v:lua.require('utils/align_comment').align_comments('c')", 'To the center'},
      ['r']    = {":call v:lua.require('utils/align_comment').align_comments('r')", 'To the right'},
      ['.']    = {
        ['name'] = '+with dot',
        ['l']    = {":call v:lua.require('utils/align_comment').align_comments_with_char('.', 'l')", 'To the left'},
        ['c']    = {":call v:lua.require('utils/align_comment').align_comments_with_char('.', 'c')", 'To the center'},
        ['r']    = {":call v:lua.require('utils/align_comment').align_comments_with_char('.', 'r')", 'To the right'},
      },
    },
    ['f']    = {
      ['name'] = '+fill',
      ['f']    = {":call v:lua.require('utils/fill_text').fill_with_cursor_character()", 'Fill with cursor char'},
      ['p']    = {":call v:lua.require('utils/fill_text').fill_with_input()", 'Fill with input pattern'}
    }
  },

  -- utilities
  ['u'] = {
    ['name'] = '+utility',
    [';']    = {':FloatermNew --wintype=normal --height=6', 'Terminal pane'},
    ['g']    = {':FloatermNew lazygit', 'Lazygit'},
    ['t']    = {':FloatermNew', 'Terminal window'},
    ['d']    = {':FloatermNew python manage.py shell', 'Django-admin Shell'},
    ['p']    = {':FloatermNew python', 'Python shell'},
    ['n']    = {':FloatermNew node', 'Node.js shell'},
    ['f']    = {':FloatermNew vifm', 'Terminal window'},
    ['l']    = {':Bracey', 'start live server'},
    ['L']    = {':BraceyStop', 'stop live server'},
    ['r']    = {':BraceyReload', 'web page to be reloaded'},
    ['m']    = {':MarkdownPreview', 'start markdown preview'},
    ['M']    = {':MarkdownPreviewStop', 'stop markdown preview'},
    ['u']    = {':PlantumlOpen', 'start PlantUML preview'},
    ['U']    = {':PlantumlSave docs/diagrams/out.png', 'export PlantUML diagram'},
    ['v']    = {':Vista!!', 'toogle vista view window'},
  },

  -- Window
  ['w'] = {
    ['name'] = '+window',
    ['-']    = {'split', 'Horiz. window'},
    ['|']    = {'vsplit', 'Vert. window'},
    ['c']    = {'close', 'Close window'},
    ['k']    = {'<C-w>k', 'Up window'},
    ['j']    = {'<C-w>j', 'Down window'},
    ['h']    = {'<C-w>h', 'Left window'},
    ['l']    = {'<C-w>l', 'Right window'},
    ['t']    = {':FloatermNew', 'New terminal window'},
  }
}

vim.g.which_key_s = {
  ['name'] = 'Hop',
  ['l']    = 'Hop line',
  ['s']    = 'Hop char 2',
  ['w']    = 'Hop word'
}

-- --Remap space as leader key
-- vim.api.nvim_set_keymap('', '<Space>', '<Nop>', { noremap = true, silent = true })
-- vim.g.mapleader = ' '
-- vim.g.maplocalleader = ' '

-- -- Highlight on yank
-- vim.api.nvim_exec(
--   [[
--   augroup YankHighlight
--     autocmd!
--     autocmd TextYankPost * silent! lua vim.highlight.on_yank()
--   augroup end
-- ]],
--   false
-- )

-- -- Y yank until the end of line
-- vim.api.nvim_set_keymap('n', 'Y', 'y$', { noremap = true })
