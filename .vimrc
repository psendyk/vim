set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
  set rtp+=~/.vim/bundle/Vundle.vim
  call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

Bundle 'scrooloose/nerdtree'

Plugin 'valloric/youcompleteme'

Plugin 'vim-airline/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'airblade/vim-gitgutter'

Plugin 'tpope/vim-fugitive'

Plugin 'junegunn/fzf'

Plugin 'easymotion/vim-easymotion'

set mouse=a
call vundle#end()
filetype plugin indent on
set background=dark
syntax enable
let g:solarized_termtrans = 1
let g:airline_solarized_bg='dark'
let g:airline_powerline_fonts = 1
colorscheme solarized 
set guioptions-=r
set go-=L
highlight Pmenu guibg=brown gui=bold
filetype plugin on
set backspace=indent,eol,start
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2
let g:kite_auto_complete=1
let g:kite_tab_complete=1
set completeopt+=menuone
autocmd CompleteDone * if !pumvisible() | pclose | endif

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

autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p
