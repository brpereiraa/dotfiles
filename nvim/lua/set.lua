local opt = vim.opt

opt.nu = true
opt.relativenumber = true

opt.expandtab = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.softtabstop = 4

opt.wrap = false

opt.swapfile = false
opt.backup = false
opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
opt.undofile = true

opt.incsearch = true
opt.scrolloff = 8

vim.g.mapleader = " "

vim.diagnostic.config({
        virtual_text = {
                prefix = "*",
                source = "always",
                spacing = 4,
        },
        update_in_insert = false,
        severity_sorte = true,
})
