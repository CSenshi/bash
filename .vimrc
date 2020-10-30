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
let mapleader=" " " <Leader> is set to space

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

"Tabs/Spaces Configurations"
set tabstop=4 "4 characters long"
set shiftwidth=4
set softtabstop=4 "4 spaces long"
set expandtab "convert tab->spaces"
set smartindent "try its best to indent"

call plug#begin('~/.vim/plugged')
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
    Plug 'vim-airline/vim-airline-themes'

    "Git"
    Plug 'https://github.com/tpope/vim-fugitive'
    Plug 'https://github.com/airblade/vim-gitgutter'
    "Theme Gruvbox"
    Plug 'https://github.com/morhetz/gruvbox'
    "php"
    Plug 'StanAngeloff/php.vim'
    Plug 'stephpy/vim-php-cs-fixer'
    Plug 'phpactor/phpactor' "Autocompletion

    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'
call plug#end()

"netrw configuration"  
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_winsize = 20

nnoremap U :UndotreeToggle<CR>
nnoremap B :Lex<CR>

"Folding"
set foldmethod=indent
set nofoldenable

colorscheme gruvbox
set background=dark

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
" ayu_dark
" base16_adwaita
" bubblegum
" cool
" base16_snazzy
" unicode symbols
let g:airline_theme='cool'
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" GitGutter
nnoremap <Leader>gb :Gblame<CR>
set updatetime=100
"let g:gitgutter_sign_added = '▋'
"let g:gitgutter_sign_modified = '▎'
let g:gitgutter_sign_removed = '▏'
"let g:gitgutter_sign_removed_first_line = '▔'
let g:gitgutter_sign_modified_removed = '▋'
"" ---------------------------------------------------------
highlight! GitGutterAdd ctermbg=2 ctermfg=2 
highlight! GitGutterChange ctermfg=4 ctermbg=4 
highlight! GitGutterDelete ctermfg=52 ctermbg=52
highlight! GitGutterChangeDelete ctermfg=52 ctermbg=52

"PHP
let g:php_cs_fixer_rules = "@PSR2"          " options: --rules (default:@PSR2)
let g:php_cs_fixer_php_path = "php"               " Path to PHP
let g:php_cs_fixer_enable_default_mapping = 1     " Enable the mapping by default (<leader>pcd)
let g:php_cs_fixer_dry_run = 0                    " Call command with dry-run option
let g:php_cs_fixer_verbose = 0                    " Return the output of command if 1, else an inline information.

nnoremap <silent><leader>pcd :call PhpCsFixerFixDirectory()<CR>
nnoremap <silent><leader>pcf :call PhpCsFixerFixFile()<CR>

autocmd BufWritePost *.php silent! call PhpCsFixerFixFile()

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Enable per-command history.
" CTRL-N and CTRL-P will be automatically bound to next-history and
" previous-history instead of down and up. If you don't like the change,
" explicitly bind the keys to down and up in your $FZF_DEFAULT_OPTS.
let g:fzf_history_dir = '~/.local/share/fzf-history'

map <C-f> :Files<CR>
map <leader>b :Buffers<CR>
nnoremap <leader>g :Rg<CR>
nnoremap <leader>t :Tags<CR>
nnoremap <leader>m :Marks<CR>


let g:fzf_tags_command = 'ctags -R'
" Border color
let g:fzf_layout = {'up':'~90%', 'window': { 'width': 0.8, 'height': 0.8,'yoffset':0.5,'xoffset': 0.5, 'highlight': 'Todo', 'border': 'sharp' } }

let $FZF_DEFAULT_OPTS = '--layout=reverse --info=inline'
let $FZF_DEFAULT_COMMAND="rg --files --hidden"


" Customize fzf colors to match your color scheme
let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Comment'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }

"Get Files
command! -bang -nargs=? -complete=dir Files
    \ call fzf#vim#files(<q-args>, fzf#vim#with_preview({'options': ['--layout=reverse', '--info=inline']}), <bang>0)


" Get text in files with Rg
command! -bang -nargs=* Rg
  \ call fzf#vim#grep(
  \   'rg --column --line-number --no-heading --color=always --smart-case '.shellescape(<q-args>), 1,
  \   fzf#vim#with_preview(), <bang>0)

" Ripgrep advanced
function! RipgrepFzf(query, fullscreen)
  let command_fmt = 'rg --column --line-number --no-heading --color=always --smart-case %s || true'
  let initial_command = printf(command_fmt, shellescape(a:query))
  let reload_command = printf(command_fmt, '{q}')
  let spec = {'options': ['--phony', '--query', a:query, '--bind', 'change:reload:'.reload_command]}
  call fzf#vim#grep(initial_command, 1, fzf#vim#with_preview(spec), a:fullscreen)
endfunction

command! -nargs=* -bang RG call RipgrepFzf(<q-args>, <bang>0)

" Git grep
command! -bang -nargs=* GGrep
  \ call fzf#vim#grep(
  \   'git grep --line-number '.shellescape(<q-args>), 0,
  \   fzf#vim#with_preview({'dir': systemlist('git rev-parse --show-toplevel')[0]}), <bang>0)

"HARD MODE"
"Disable Arrow Keys"
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
"Disable Mouse"
set mouse=
set ttymouse=
