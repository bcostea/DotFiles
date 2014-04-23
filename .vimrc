set nocompatible

syntax on

set tabstop=4 softtabstop=4 shiftwidth=4

filetype on
"filetype plugin indent on

"set autoindent expandtab
set number ruler wrap
set hlsearch incsearch ignorecase smartcase

set wildmenu showcmd
set wildmode=list:longest

set cul showmatch

"set ttyfast                   " we have a fast terminal
set shell=bash

set encoding=utf-8 fileencoding=utf-8
set nobackup nowritebackup noswapfile autoread

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set background=dark

color solarized

set foldenable          " enable folding
set foldnestmax=10      " 10 nested fold max
set foldmethod=indent   " fold based on indent level
set foldlevelstart=10   " open most folds by default

nnoremap <space> za

:command WQ wq
:command Wq wq
:command W w
:command Q q

