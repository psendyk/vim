set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

Bundle 'scrooloose/nerdtree'

Bundle 'antlypls/vim-colors-codeschool'

Plugin 'mattn/emmet-vim'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'airblade/vim-gitgutter'

Plugin 'altercation/vim-colors-solarized'

Plugin 'easymotion/vim-easymotion'

Plugin 'Valloric/YouCompleteMe' 

let g:airline_solarized_bg='dark'

set mouse=a
call vundle#end()
filetype plugin indent on
syntax enable
set background=dark
colorscheme delek 
set guioptions-=r
set go-=L


set lines=35	     " Vim starts with this many lines
set columns=120      " You can change these numbers
set textwidth=120    " This sets the 'virtual' line number
set scrolloff=5      " Keep at least 5 lines above/below cursor
set mousehide	     " Hides mouse when typing
set ignorecase	     " Do case insensitive matching
set smartcase        " Unless you explicitly search for upper case
set nu
set incsearch        " Incremental search
set hlsearch	     " Highlight searches
set expandtab        " Uses spaces instead of tabs
set tabstop=4        " Each tab is 4 spaces
set showmode         " Show the current mode
    if has("autocmd")
         au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    endif "remembers cursor position after closing

highlight clear

