#!/bin/bash

# pre
vim --version | grep +python3 || apt-get install -y vim-gtk

# main
rm -rf ~/.vim/bundle/Vundle.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

cat <<EOF > ~/.vimrc
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
""""
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'davidhalter/jedi-vim'
autocmd FileType python setlocal completeopt-=preview
Plugin 'hynek/vim-python-pep8-indent'
filetype plugin indent on
Plugin 'nvie/vim-flake8'
call vundle#end()
""""
if has("syntax")
syntax on
endif
set t_Co=256
set encoding=utf-8
set number
set tabstop=4
set cursorline
set laststatus=2
set statusline=\ %<%l:%v\ [%P]%=%a\ %h%m%r\ %F\
au FileType python map <f2> : !python3 %
EOF
