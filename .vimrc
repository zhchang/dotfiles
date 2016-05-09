set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'zhchang/quick_file'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'nvie/vim-flake8'
call vundle#end()

syntax on
filetype indent plugin on
set modeline
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

let g:go_fmt_command = "goimports"

set hlsearch
set cursorline
set background=dark
color solarized 
set number
set guifont=Monaco:h12
nnoremap <silent> gr :GoReferrers<cr>
nnoremap <silent> gb :GoInstall<cr>
:command GoB GoInstall
let g:QF_ASP='~/work/go/src/github.com/myteksi/go'

let g:go_highlight_operators= 1
