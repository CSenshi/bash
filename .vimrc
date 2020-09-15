syntax on "Basic Highlights"

set noerrorbells "No Error Sound"
set tabstop=4 "4 characters long"
set softtabstop=4 "4 spaces long"
set expandtab "convert tab->spaces"
set smartindent "try its best to indent"
set nu "line numbers"
set relativenumber
set nowrap "don't throw long line on new line"
set smartcase "case sensative search"
set noswapfile "NO FUCKING SWAP FILES"
set nobackup 
set undodir=~/.vim/undodir
set undofile
set incsearch "incremental search"

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/kien/ctrlp.vim.git'
Plug 'https://github.com/ycm-core/YouCompleteMe.git', { 'do': './install.py' }
Plug 'mbbill/undotree'
Plug 'https://tpope.io/vim/surround.git'
Plug 'https://github.com/machakann/vim-highlightedyank'

call plug#end()

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let mapleader = " "

"netrw configuration"  
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20

let g:ctrlp_use_caching = 0

nnoremap U :UndotreeShow<CR>
nnoremap B :Lex<CR>
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2
