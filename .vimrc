syntax on "Basic Highlights"

set noerrorbells "No Error Sound"
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

"Tabs/Spaces Configurations"
set tabstop=4 "4 characters long"
set shiftwidth=4
set softtabstop=4 "4 spaces long"
set expandtab "convert tab->spaces"
set smartindent "try its best to indent"

call plug#begin('~/.vim/plugged')
    "'Ctrl + P' file search"
    Plug 'https://github.com/kien/ctrlp.vim.git'
    "Auto Complete"
    Plug 'https://github.com/ycm-core/YouCompleteMe.git', { 'do': './install.py --all' }
    "Undo Tree"
    Plug 'mbbill/undotree'
    "Auto Highlight"
    Plug 'https://github.com/machakann/vim-highlightedyank'
    "Go"
    Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
    "Blade.php"
    Plug 'jwalton512/vim-blade'
    "Airline"
    Plug 'vim-airline/vim-airline'
    "Github"
    Plug 'https://github.com/tpope/vim-fugitive'
call plug#end()

let g:ctrlp_user_command = ['.git/', 'git --git-dir=%s/.git ls-files -oc --exclude-standard']
let g:ctrlp_use_caching = 0

"netrw configuration"  
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20

nnoremap U :UndotreeToggle<CR>
nnoremap B :Lex<CR>

"Folding"
set foldmethod=indent
autocmd FileType go setlocal foldmethod=syntax
set nofoldenable

"HARD MODE"
"Disable Arrow Keys"
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
"Disable Mouse"
set mouse=
set ttymouse=
