set nocompatible          " be iMproved, required

set encoding=utf-8 fileencoding=utf-8
set nobackup nowritebackup noswapfile autoread
set ttyfast shell=bash
set background=dark
set cul showmatch
set number ruler wrap
color solarized
set softtabstop=2
set shiftwidth=2
set expandtab             " replace tabs with spaces
set autoindent copyindent            " copy the previous indentation on autoindenting


set hlsearch incsearch ignorecase smartcase
set wildmenu showcmd wildmode=list:longest

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

set history=100 undolevels=100 title

set pastetoggle=<F2>

" fix annoying SHIFT key
:command WQ wq
:command Wq wq
:command W w
:command Q q

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'mhinz/vim-signify'
Bundle 'vim-ruby/vim-ruby'
Bundle 'pangloss/vim-javascript'
Bundle 'leshill/vim-json'
Bundle 'othree/html5.vim'
Bundle 'IndexedSearch'
Bundle 'benmills/vimux'
Bundle 'jgdavey/vim-turbux'
Bundle 'techlivezheng/vim-plugin-minibufexpl'

Plugin 'L9'

call vundle#end()        

" MBE config and mappings
let g:miniBufExplMapCTabSwitchBufs = 1 "Map control-tab and control-shift-tab for switching between buffers
let g:miniBufExplUseSingleClick = 1 "Change buffer with single click on a buffer
let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines)
let g:miniBufExplMaxSize = 1 " <max lines: defualt 0> setting this to 0 will mean the window gets as big as needed to fit all your buffers.

noremap ` :MBEbn<CR>
noremap ~ :MBEbp<CR>

" dark / light toggle
call togglebg#map("<F5>")

" testing
map <CR> <Plug>SendTestToTmux
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

filetype plugin indent on
