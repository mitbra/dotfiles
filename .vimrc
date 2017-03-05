
set nocompatible " be iMproved, required
filetype off " required
filetype plugin indent off
 
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
 
" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
 
Plugin 'kien/ctrlp.vim'
Plugin 'fatih/vim-go'
Plugin 'majutsushi/tagbar'

Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'

Plugin 'flazz/vim-colorschemes'
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'

Plugin 'rking/ag.vim'
 
Plugin 'nsf/gocode'

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on
syntax on

colorscheme atom 
 
" tagbar shortcuts
nmap <F8> :TagbarToggle<CR>

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" The mapped keys to access this configuration file...
map <leader>v :e ~/.vimrc<esc>
map <leader>V :e ~/.vimrc<esc>

set encoding=utf-8
set backspace=indent,eol,start
set tabstop=4

" Turn on relative number counting in vim. So, so handy.
set rnu

" airline settings

" vim-airline seems to need this set
set laststatus=2

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

let g:airline_powerline_fonts=0

" let g:airline_theme='wombat'

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
