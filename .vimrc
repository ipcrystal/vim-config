"==========================================
" Author  : winterfell
" Email   : mimotronik@gmail.com
" Desc    : vim config
"==========================================

" set leader key
nnoremap <SPACE> <Nop>
let mapleader = "\<SPACE>"

" 开启鼠标支持
set mouse=a

set nocompatible                " don't bother with vi compatibility "
set autoread                    " reload files when changed on disk, i.e. via `git checkout` "
set shortmess=atI

set magic                       " For regular expressions turn magic on "
set title                       " change the terminal's title "
set nobackup                    " do not keep a backup file "

set noerrorbells                " don't beep "
set visualbell t_vb=            " turn off error beep/flash "
set t_vb=
set timeoutlen=500

set encoding=utf-8
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformats=unix,dos,mac
set termencoding=utf-8
set formatoptions+=m
set formatoptions+=B


set ruler                       " show the current row and column "
set number                      " show line numbers "
set nowrap
set showcmd                     " display incomplete commands "
set showmode                    " display current modes "
set showmatch                   " jump to matches when entering parentheses "
set matchtime=2                 " tenths of a second to show the matching parenthesis "

set expandtab                   " expand tabs to spaces "
set smarttab
set shiftround

set autoindent smartindent shiftround
set shiftwidth=4
set tabstop=4
set softtabstop=4                " insert mode tab and backspace use 4 spaces "

" set cursorcolumn
set cursorline

" search config
set nohlsearch
set incsearch
set smartcase
set ignorecase


set paste

" vim文件类型设置
filetype on
filetype plugin on
filetype indent on

" basic key mapping
nnoremap L $
nnoremap H ^
vnoremap L $
vnoremap H ^
nnoremap ; :

" insert model jj = <ESC>
inorema jj <Esc>

" copy and paste
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>P "0p
vnoremap Y "+y

nnoremap <leader>sc :noh<CR>

" Quit normal mode
nnoremap <Space>q  :wq!<CR>
nnoremap <Space>Q  :qa!<CR>
