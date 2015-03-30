
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
"Plugin 'valloric/youcompleteme'
 
Plugin 'nsf/gocode'

" All of your Plugins must be added before the following line
call vundle#end() " required
filetype plugin indent on
syntax on

colorscheme atom 
 
" tagbar shortcuts
nmap <F8> :TagbarToggle<CR>

" The mapped keys to access this configuration file...
map <leader>v :e ~/.vimrc<esc>
map <leader>V :e ~/.vimrc<esc>

" vim-airline seems to need this set
set laststatus=2
 
set tabstop=4

" Turn on relative number counting in vim. So, so handy.
set rnu

" airline settings
let g:airline_left_sep=''
let g:airline_right_sep=''
AirlineTheme bubblegum
