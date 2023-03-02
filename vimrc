" __  ____   __  _   ___     _____ __  __ ____   ____
"|  \/  \ \ / / | \ | \ \   / /_ _|  \/  |  _ \ / ___|
"| |\/| |\ V /  |  \| |\ \ / / | || |\/| | |_) | |
"| |  | | | |   | |\  | \ V /  | || |  | |  _ <| |___
"|_|  |_| |_|   |_| \_|  \_/  |___|_|  |_|_| \_\\____|

let mapleader = ";"

syntax enable
syntax on 
set number
"set relativenumber
set ignorecase
set smartcase
set showcmd

set hlsearch
exec "nohlsearch"
set incsearch
	
set encoding=utf-8
set wrap
"set nofoldenable
set mouse=a
set nocompatible
set wildmenu
set gcr=a:block-blinkon0
set linebreak
set wrap
set wildmenu
filetype on
filetype plugin on

set tabstop=4
set shiftwidth=4

if has("autocmd") 
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif 
endif
 
nmap S :w<CR>
nmap Q :q<CR>
nmap R :source .vimrc<CR>
nmap <CR> o<Esc>
inoremap kk <Esc>:w<CR>
 
noremap h i
noremap i k
noremap k j
noremap j h

noremap I 5k
noremap K 5j
noremap J 5h
noremap L 5l

noremap 1 0
noremap 0 $

nnoremap <esc><esc> :nohl<cr>

auto insertleave,cursormoved * normal! zz

"---------------------------------leader----------------------------
vnoremap <C-y> "+y
vnoremap <C-p> "*p

"---------------------------------cursor----------------------------
" Set cursor shape and color
set cursorline
"set cursorcolumn
if &term =~ "xterm"
    " INSERT mode
    let &t_SI = "\<Esc>[6 q" . "\<Esc>]12;blue\x7"
    " REPLACE mode
    let &t_SR = "\<Esc>[3 q" . "\<Esc>]12;black\x7"
    " NORMAL mode
    let &t_EI = "\<Esc>[2 q" . "\<Esc>]12;green\x7"
endif
" 1 -> blinking block  
" 2 -> solid block  
" 3 -> blinking underscore  
" 4 -> solid underscore  
" 5 -> blinking vertical bar 
" 6 -> solid vertical bar 

"-------------------------------vim-plug----------------------------
call plug#begin('~/.vim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'kshenoy/vim-signature'
Plug 'preservim/nerdtree'
Plug 'Raimondi/delimitMate'
Plug 'sonph/onehalf', { 'rtp': 'vim' }
call plug#end()

"----------------------------------分屏--------------------------------
map sl :set splitright<CR>:vsplit<CR>;t
map si :set nosplitbelow<CR>:split<CR>;t
map <Space>l <C-w>l
map <Space>k <C-w>j
map <Space>j <C-w>h
map <Space>i <C-w>k

"----------------------------------标签页------------------------------
map ti :tabe<CR>
map tj :-tabnext<CR>
map tl :+tabnext<CR>

"---------------------------------python-------------------------------
nnoremap <buffer> <F1> :exec '!python' shellescape(@%, 1)<cr>
 
"----------------------------------C++---------------------------------
autocmd BufNewFile *.cpp 0r ~/.vim/template/c++.tlp
nnoremap <buffer> <F2> :exec '!g++ -std=c++11 % -o %<lt> && ./%<lt>' shellescape(@%, 1)<cr>
map zs 1h//<ESC>
map ZS 1xx
inoremap { {<CR><BACKSPACE>}<Esc>O



"---------------------------------vim-airline-------------------------
let g:airline_theme='bubblegum'

"-----------------------------vim-colorscheme-------------------------

"-------------------------------vim-signature-------------------------
let g:SignatureMap = {
        \ 'Leader'             :  "m",
        \ 'PlaceNextMark'      :  "m,",
        \ 'ToggleMarkAtLine'   :  "m.",
        \ 'PurgeMarksAtLine'   :  "m-",
        \ 'DeleteMark'         :  "dm",
        \ 'PurgeMarks'         :  "mda",
        \ 'PurgeMarkers'       :  "m<BS>",
        \ 'GotoNextLineAlpha'  :  "']",
        \ 'GotoPrevLineAlpha'  :  "'[",
        \ 'GotoNextSpotAlpha'  :  "`]",
        \ 'GotoPrevSpotAlpha'  :  "`[",
        \ 'GotoNextLineByPos'  :  "]'",
        \ 'GotoPrevLineByPos'  :  "['",
        \ 'GotoNextSpotByPos'  :  "mn",
        \ 'GotoPrevSpotByPos'  :  "mp",
        \ 'GotoNextMarker'     :  "[+",
        \ 'GotoPrevMarker'     :  "[-",
        \ 'GotoNextMarkerAny'  :  "]=",
        \ 'GotoPrevMarkerAny'  :  "[=",
        \ 'ListLocalMarks'     :  "ms",
        \ 'ListLocalMarkers'   :  "m?"
        \ }

"-------------------------vim-nerdtree-------------------------
map ;t :NERDTreeMirror<CR>
map ;t :NERDTreeToggle<cr>
let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'
let g:NERDTreeWinPos='left'
let g:NERDTreeSize=30
let g:NERDTreeShowLineNumbers=1


