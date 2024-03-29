--------------------------------------------------------------------
-- keymap.lua
--------------------------------------------------------------------
if DEBUG then
	print("<< DEBUG: Loading keymaps.lua >>")
end

-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = ","

local keymap = vim.keymap -- for conciseness

keymap.set("i", "jj", "<Esc>")

-- Ctrl-s: to save
keymap.set("n", "<c-s>", ":w<CR>", {})
keymap.set("i", "<c-s>", "<Esc>:w<CR>a", {})

--------------------------------------------------------------------
-- Line editting
--------------------------------------------------------------------
-- Editting on Insert Mode
keymap.set("i", "<M-,>", "<Right>,")
keymap.set("i", "<M-.>", "<Right>.")
keymap.set("i", "<M-:>", "<Right>:")
keymap.set("i", "<M-,><M-,>", "<Esc>A,")
keymap.set("i", "<M-.><M-.>", "<Esc>A.")
keymap.set("i", "<M-:><M-:>", "<Esc>A:")
-- Blank whole line
-- keymap.set('n', '<M-l>', '0d$')
-- keymap.set('n', '<M-p>', 'pdd')
-- Indent / Unident a line
keymap.set("n", "<M->>", "V><Esc>")
keymap.set("n", "<M-<>", "V<<Esc>")
-- Remove Line
keymap.set("i", "<C-CR>", "<Esc>A<Esc>jddO")

-- Insert line
keymap.set("i", "<M-n>", "<Esc>o")
keymap.set("i", "<M-i>", "<Esc>o<Esc>jddkA")
keymap.set("n", "<M-i>", "^i<Tab>")
-- Insert text in HTML Tags
keymap.set("i", "<M-lt>", "<CR><Esc>O")

-- Editting in line
keymap.set("n", "I", "^d$i")
keymap.set("n", "H", "0")
keymap.set("n", "L", "$")
keymap.set("n", "X", "d$")
keymap.set("n", "Y", "y$")
-- Insert a item in table
-- keymap.set('i', '<M-t>', '<ESC>A,<ESC>hi<CR><ESC>O')

-- Move line
keymap.set("n", "<S-Down>", ":m .+1<CR>")
keymap.set("n", "<S-Up>", ":m .-2<CR>")
keymap.set("i", "<S-Down>", "<Esc>:m .+1<CR>")
keymap.set("i", "<S-Up>", "<Esc>:m .-2<CR>")
keymap.set("v", "<S-Down>", ":move '>+1<CR>gv-gv")
keymap.set("v", "<S-Up>", ":move '<-2<CR>gv-gv")

-- Indent/Unident
keymap.set("v", "<", "<gv")
keymap.set("v", ">", ">gv")

--------------------------------------------------------------------
-- Windows navigation
--------------------------------------------------------------------
-- Split window
keymap.set("n", "<localleader>sh", ":split<CR>")
keymap.set("n", "<localleader>sv", ":vsplit<CR>")
keymap.set("n", "<localleader>se", "<C-w>=") -- make split windows equal width & height
keymap.set("n", "<localleader>sx", ":close<CR>") -- close current split window

-- Move focus on window
keymap.set("n", "<ESC>k", "<cmd>wincmd k<CR>")
keymap.set("n", "<ESC>j", "<cmd>wincmd j<CR>")
keymap.set("n", "<ESC>h", "<cmd>wincmd h<CR>")
keymap.set("n", "<ESC>l", "<cmd>wincmd l<CR>")

-- Window Resize
keymap.set("n", "<M-Up>", "<cmd>wincmd -<CR>")
keymap.set("n", "<M-Down>", "<cmd>wincmd +<CR>")
keymap.set("n", "<M-Left>", "<cmd>wincmd <<CR>")
keymap.set("n", "<M-Right>", "<cmd>wincmd ><CR>")

-- Window Zoom In/Out
keymap.set("n", "<C-w>i", ":tabnew %<CR>")
keymap.set("n", "<C-w>o", ":tabclose<CR>")

-- maximizer window
keymap.set("n", "<localleader>sm", ":MaximizerToggle<CR>") -- close current split window

--------------------------------------------------------------------
-- Buffers
--------------------------------------------------------------------

-- Tab navigation
keymap.set("n", "<localleader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<localleader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<localleader>tn", ":tabn<CR>") --  go to next tab
keymap.set("n", "<localleader>tp", ":tabp<CR>") --  go to previous tab

--------------------------------------------------------------------
-- Clear highlighting on escale in normal mode.
--------------------------------------------------------------------
keymap.set("n", "<localleader>nh", ":nohl<CR>")

--------------------------------------------------------------------
-- Terminal mode
--------------------------------------------------------------------
keymap.set("t", "<Esc>", "<C-\\><C-n>")

--------------------------------------------------------------
-- Nonbuild-in commands
--------------------------------------------------------------

-- nvim-tree
keymap.set("n", "<localleader>e", ":NvimTreeToggle<CR>") -- toggle file explorer

-- telescope
keymap.set("n", "<localleader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<localleader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<localleader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<localleader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<localleader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
keymap.set("n", "<localleader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
keymap.set("n", "<localleader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
keymap.set("n", "<localleader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
keymap.set("n", "<localleader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
keymap.set("n", "<localleader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessary
