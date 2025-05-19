local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<leader>w', vim.cmd.Ex)
vim.keymap.set('n', '<Leader>t', ':botright split | terminal<CR>', { noremap = true, silent = true })
