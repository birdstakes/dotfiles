-- leader
vim.g.mapleader = ' '
vim.o.timeoutlen = 300

-- tabs and spaces
vim.o.expandtab = true
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.tabstop = 8

-- line numbers
vim.wo.number = true
vim.wo.relativenumber = true

-- find and replace
vim.o.incsearch = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = false
vim.o.inccommand = 'split'

-- misc. quality of life
vim.o.fileformats = 'unix,dos'
vim.o.hidden = true
vim.o.mouse = 'a'
vim.o.undofile = true

-- misc. appearance
vim.o.fillchars = 'eob: '
vim.o.shortmess = vim.o.shortmess .. 'I'
vim.o.showmode = false
vim.o.termguicolors = true
vim.wo.signcolumn = 'yes'
