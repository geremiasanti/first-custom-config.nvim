vim.g.mapleader = " "

-- undo and file backups
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- use always system clipboard
vim.opt.clipboard = "unnamedplus"

-- fuck wrap
vim.opt.wrap = false
-- tab = 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- scrolloff
vim.opt.scrolloff = 10

-- open splits to the right
vim.opt.splitright = true

-- search highlighting
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- better(?) colors
--vim.opt.termguicolors = true

-- 80 chars sign
vim.opt.colorcolumn = "80"
