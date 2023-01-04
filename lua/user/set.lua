-- Sets the cursor to fat for insert mode
-- vim.opt.guicursor = ""

-- Sets line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.numberwidth = 3

-- Sets 4 space tab
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Enables vim smart indent
vim.opt.smartindent = true

-- Enables vim line wrap
vim.opt.wrap = true

-- Disables swap and backup file
-- Sets undo directory
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Disables highlighting words on search
-- enables incremental search
vim.opt.hlsearch = true
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

-- Adds a column
-- vim.opt.colorcolumn = "80"

-- sets the leader key to space
vim.g.mapleader = " "

vim.opt.laststatus = 3

vim.opt.splitright = true
