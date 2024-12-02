local opt = vim.opt

opt.nu = true
opt.relativenumber = true

opt.expandtab = true
opt.tabstop = 2

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.incsearch = true
opt.scrolloff = 8

vim.g.mapleader = " "
