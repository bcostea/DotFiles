set nocompatible                                  " always be iMproved

color solarized
set background=dark
highlight CursorColumn ctermbg=234                " bg color after 80 cols
highlight CursorLine ctermbg=3 term=none cterm=none  " bg bgcolor for current line
highlight WhitespaceEOL ctermbg=DarkYellow 
match WhitespaceEOL /\s\+\%#\@<!$/
set t_Co=256                                      " 256 colors in terminal
set textwidth=80                                  " wrap at 80 chars
set scrolloff=4                                   " keep 4 lines visible
set numberwidth=5                                 " number column width
set nofoldenable                                  " disable code folding
set cul                                           " highlight current line
set showmatch                                     " highlight matching brace
set number ruler wrap
set laststatus=2                                  " always show status bar
set ttyfast lazyredraw shell=bash                 " we want a fast VIM
set wildmenu showcmd wildmode=list:longest
set hlsearch incsearch ignorecase smartcase
if exists('+colorcolumn')
  let &colorcolumn=join(range(81,999),",")
  autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
else
  autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

set encoding=utf-8 fileencoding=utf-8
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab autoindent copyindent
set nobackup nowritebackup noswapfile autoread
set history=100 undolevels=100 title
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
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
Bundle 'Raimondi/delimitMate'
Plugin 'L9'

call vundle#end()

" MBE config and mappings
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines)
let g:miniBufExplMaxSize = 2 " <max lines: defualt 0>

noremap ` :MBEbn<CR>
noremap ~ :MBEbp<CR>

" dark / light toggle
call togglebg#map("<F5>")

" testing
map <CR> <Plug>SendTestToTmux
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'

filetype plugin indent on
syntax on
autocmd BufRead,BufNewFile {Gemfile,Rakefile,config.ru} setlocal filetype=ruby

