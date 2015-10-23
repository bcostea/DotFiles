set nocompatible                                  " always be iMproved

let mapleader = " "

color solarized
set background=dark
highlight CursorColumn ctermbg=234                " bg color after 80 cols
highlight CursorLine ctermbg=3 term=none cterm=none  " bg bgcolor for current line
highlight WhitespaceEOL ctermbg=DarkYellow
highlight NonText guibg=#060606
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
set autowrite " Automatically :write before running commands"
set list listchars=tab:»·,trail:·,nbsp:·

if exists('+colorcolumn')
  let &colorcolumn=join(range(81,999),",")
  autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
else
  autocmd BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif

set encoding=utf-8 fileencoding=utf-8
set shiftwidth=2 tabstop=2 softtabstop=2 expandtab autoindent copyindent
set nobackup nowritebackup noswapfile autoread
set history=50 undolevels=50 title
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
Bundle 'thoughtbot/vim-rspec'
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
Bundle 'techlivezheng/vim-plugin-minibufexpl'
Bundle 'Raimondi/delimitMate'
Bundle 'jgdavey/tslime.vim'
Bundle 'slim-template/vim-slim.git'
Plugin 'tpope/vim-bundler'
Plugin 'vim-scripts/tComment'

Plugin 'L9'

call vundle#end()

" MBE config and mappings
let g:miniBufExplMapCTabSwitchBufs = 1 
let g:miniBufExplTabWrap = 1 " make tabs show complete (no broken on two lines)
let g:miniBufExplMaxSize = 2 " <max lines: defualt 0>

noremap ` :MBEbn<CR>
noremap ~ :MBEbp<CR>

" RSpec.vim mappings
map <Leader>t :call RunCurrentSpecFile()<CR>
map <Leader>s :call RunNearestSpec()<CR>
map <Leader>l :call RunLastSpec()<CR>
map <Leader>a :call RunAllSpecs()<CR>

filetype plugin indent on
syntax on
autocmd BufRead,BufNewFile {Gemfile,Rakefile,config.ru} setlocal filetype=ruby

let g:rspec_command = 'silent !rspec {spec} > /tmp/specrun'

" Tab completion
" will insert tab at beginning of line,
" will use completion if not at beginning
set wildmode=list:longest,list:full
function! InsertTabWrapper()
  let col = col('.') - 1

  if !col || getline('.')[col - 1] !~ '\k'
    return "\<tab>"
  else
    return "\<c-p>"
  endif
endfunction
inoremap <Tab> <c-r>=InsertTabWrapper()<cr>
inoremap <S-Tab> <c-n>

" Switch between the last two files
nnoremap <leader><leader> <c-^>
nmap <CR> :w<CR>
