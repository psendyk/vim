set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

Bundle 'scrooloose/nerdtree'

Plugin 'mattn/emmet-vim'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'airblade/vim-gitgutter'

Plugin 'easymotion/vim-easymotion'

Plugin 'ervandew/supertab' 

Bundle 'antlypls/vim-colors-codeschool'

set mouse=a
call vundle#end()
filetype plugin indent on
set background=dark
syntax enable
colorscheme solarized 
set guioptions-=r
set go-=L
highlight Pmenu guibg=brown gui=bold
filetype plugin on
set omnifunc=syntaxcomplete#Complete
let g:SuperTabDefaultCompletionType = "<C-X><C-O>"

set lines=60         " Vim starts with this many lines
set columns=120      " You can change these numbers
set textwidth=120    " This sets the 'virtual' line number
set scrolloff=5      " Keep at least 5 lines above/below cursor
set mousehide	     " Hides mouse when typing
set ignorecase	     " Do case insensitive matching
set smartcase        " Unless you explicitly search for upper case
set nu
set incsearch        " Incremental search
set expandtab        " Uses spaces instead of tabs
set tabstop=4        " Each tab is 4 spaces
set showmode         " Show the current mode
    if has("autocmd")
         au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
    endif "remembers cursor position after closing


