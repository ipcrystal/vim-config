"==========================================
" Author  : winterfell
" Email   : mimotronik@gmail.com
" Desc    : vim config
"==========================================

" set leader key
nnoremap <SPACE> <Nop>
let mapleader = " "

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


autocmd BufNewFile *.php exec ":call SetPhpTitle()"
func SetPhpTitle()
  call setline(1, "<?php")
  call setline(2, "\/**")
  call setline(3, "* FileName: ".$file_path_name)
  call setline(4, "* CreateDateTime: ".$now_date_time)
  call setline(5, "*/")
  call setline(6, "")
endfunction


autocmd BufNewFile *.sh exec ":call SetBashTitle()"
func SetBashTitle()
    call setline(1, "#!/bin/bash")
    call setline(2, "")
endfunction


autocmd BufNewFile *.xml exec ":call SetXmlTitle()"
func SetXmlTitle()
    call setline(1, "<?xml version=\"1.0\" encoding=\"UTF-8\"?>")
    call setline(2, "")
endfunction


" 光标定位到末行
autocmd BufNewFile * normal G


nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
" nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'easymotion/vim-easymotion'

call plug#end()