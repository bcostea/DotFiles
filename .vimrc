set nocompatible

syntax on

set tabstop=4 softtabstop=4 shiftwidth=4

filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Bundle 'Command-T'
Bundle 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/syntastic'
Bundle 'mhinz/vim-signify'
Bundle 'sjl/gundo.vim'
Bundle 'vim-ruby/vim-ruby'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'pangloss/vim-javascript'
Bundle 'leshill/vim-json'
Bundle 'briancollins/vim-jst'
Bundle 'othree/html5.vim'
Bundle 'L9'
Bundle 'IndexedSearch'

Bundle 'benmills/vimux'
Bundle 'jgdavey/vim-turbux'
" Bundle 'thoughtbot/vim-rspec'
" Bundle 'jgdavey/tslime.vim'

Bundle 'techlivezheng/vim-plugin-minibufexpl'

Bundle 'bclose'

"Bundle 'skalnik/vim-vroom' "unit testing for ruby
"Bundle 'mattn/webapi-vim' 
"Bundle 'mattn/gist-vim' "gist-uri



call vundle#end()        

filetype plugin indent on    " required

set number ruler wrap
set hlsearch incsearch ignorecase smartcase

set wildmenu showcmd
set wildmode=list:longest

set cul showmatch

set autoindent    " always set autoindenting on
set copyindent    " copy the previous indentation on autoindenting

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

set history=1000
set undolevels=1000
set title

set pastetoggle=<F2>

nnoremap <space> za

let g:miniBufExplMapCTabSwitchBufs = 1 "Map control-tab and control-shift-tab for switching between buffers
let g:miniBufExplUseSingleClick = 1 "Change buffer with single click on a buffer
let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines)
let g:miniBufExplMaxSize = 1 " <max lines: defualt 0> setting this to 0 will mean the window gets as big as needed to fit all your buffers.

let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

" vim-rspec mappings
"map <Leader>t :call RunCurrentSpecFile()<CR>
"map <Leader>s :call RunNearestSpec()<CR>
"map <Leader>l :call RunLastSpec()<CR>
"map <Leader>a :call RunAllSpecs()<CR>

" fix annoying SHIFT key
:command WQ wq
:command Wq wq
:command W w
:command Q q

" MBE mappings
noremap ` :MBEbn<CR>
noremap ~ :MBEbp<CR>

let g:ruby_debugger_debug_mode = 1
let g:ruby_debugger_progname = 'vim'

