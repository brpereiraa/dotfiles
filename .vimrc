set nocompatible
filetype on
filetype plugin on
filetype indent on

syntax on

set number
set relativenumber
set cursorline

"Keymaps
nnoremap <C-p> <Nop>
nnoremap <C-p> :FZF<CR>

"Pluggins config -> :source % -> :PlugInstall 
call plug#begin('~/.vim/plugged')

Plug 'junegunn/fzf', { 'do': { ->fzf#install() } }
Plug 'mhinz/vim-startify'
Plug 'rstacruz/vim-closer'
Plug 'tpope/vim-fugitive'
Plug 'morhetz/gruvbox'

call plug#end()
