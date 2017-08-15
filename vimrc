set nocompatible
set number
set cursorline
set showmatch
set laststatus=2
filetype indent plugin on
syntax on
set backspace=indent,eol,start
set ruler
set tabstop=4
set shiftwidth=4
set expandtab
set vb
set t_vb=
set ffs=unix

if filereadable('.vimrc.local')
    so .vimrc.local
endif
