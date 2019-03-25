execute pathogen#infect()

filetype plugin indent on
syntax on

let g:netrw_dirhistmax = 0 " no netrw file

syntax on
set guifont=Monospace\ 10
set nowrap
set hlsearch	    " Highlight search

set ignorecase      " Ignore case
set smartcase       " Don't ignore if at least one is upper
set incsearch       " Search 'in-fly'
set guioptions+=b   " Horizontal scrollbar
"Tab options
set tabstop=4       " The width of a TAB is set to 4.
                    " Still it is a \t. It is just that
                    " Vim will interpret it to be having
                    " a width of 4.
set shiftwidth=4    " Indents will have a width of 4
"set softtabstop=4   " Sets the number of columns for a TAB
"In insert mode use Ctrl+v + TAB for /t
set expandtab       " Expand TABs to spaces
set autoindent      " turn on (for ttcn3)
filetype plugin indent on " smart
"-----------

" No swap files
set noswapfile
" Jump save
set hidden

"Line number configuration
set nu
set numberwidth=1
highlight LineNr ctermfg=red
highlight LineNr gui=bold guifg=red
" highlight line (\ + w)
hi CursorLine cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>w :set cursorline!<CR>
" highlight column (\ + c)
hi CursorColumn cterm=NONE ctermbg=darkred ctermfg=white guibg=darkred guifg=white
nnoremap <Leader>c :set cursorcolumn!<CR>
"-------------------------

"CtrlP
let g:ctrlp_working_path_mode = 0
let g:ctrlp_by_filename = 1
let g:ctrlp_max_files = 0
let g:ctrlp_max_depth = 100

"Change background after specific line (only in gvim)
"No highlight priority
execute "set colorcolumn=" . join(range(120,120), ',')
highlight ColorColumn ctermbg=NONE guibg=gray99
"----------------------------------------------------
map <F3> :NERDTreeToggle <CR>
"Close vim if the only window left open is a NERDTree:
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:neocomplete#enable_at_startup = 0 "disabled for now
let g:neocomplete#enable_auto_select = 0 "disabled for now

"map <S-Up> :m .-2<CR>
"map <S-Down> :m .+1<CR>

" Move lines up and down (selected also)
nnoremap <S-Down> :m .+1<CR>==
nnoremap <S-Up> :m .-2<CR>==
inoremap <S-Down> <Esc>:m .+1<CR>==gi
inoremap <S-Up> <Esc>:m .-2<CR>==gi
vnoremap <S-Down> :m '>+1<CR>gv=gv
vnoremap <S-Up> :m '<-2<CR>gv=gv
