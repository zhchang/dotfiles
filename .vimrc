set nocompatible
set visualbell
set t_vb=

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"Plugin 'gmarik/Vundle.vim'
"Plugin 'zhchang/quick_file'
"Plugin 'fatih/vim-go'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'nvie/vim-flake8'
"Plugin 'klen/python-mode' 
"Plugin 'tpope/vim-fugitive'
call vundle#end()

syntax on
filetype indent plugin on
set modeline
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4

let g:go_fmt_command = "gofmt"

set hlsearch
" set cursorline
set background=dark
"color solarized 
set relativenumber
set guifont=Monaco:h12
nnoremap <silent> gr :GoReferrers<cr>
nnoremap <silent> gb :GoInstall<cr>
:command GoB GoInstall
let g:QF_ASP=$GO_WORK_ROOT

let g:go_highlight_operators= 1

set autoread
" autocmd BufWritePost *.py silent !autopep8 -i %  
let g:pymode_rope_goto_definition_bind = "<C-d>"
let g:pymode_run_bind = "<C-e>"
let g:pymode_lint_ignore = "E501"
let g:go_def_mode = 'godef'

set foldmethod=syntax
set clipboard=unnamed
let g:pymode_rope_complete_on_dot = 0
function Clip() range
  echo system('echo '.shellescape(join(getline(a:firstline, a:lastline), "\n")).'| clip.exe')
endfunction
com -range=% -nargs=0 Clip ::<line1>,<line2>call Clip()
