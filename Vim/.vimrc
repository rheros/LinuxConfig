set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
set t_Co=256
:colorscheme  molokai "evening
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
Plugin 'tmhedberg/SimpylFold'
Plugin 'fatih/vim-go'
Plugin 'https://github.com/Valloric/YouCompleteMe'
call vundle#end()
filetype plugin indent on
set splitbelow
let g:SimpylFold_docstring_preview=1
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <space> za

syntax on 
set mouse=a
set number

set autoindent
set cindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set cino=g0,:0

let g:tagbar_width=35
let g:tagbar_ctags_bin='/usr/bin/ctags'
let g:tagbar_right=1
let g:tagbar_autofocus=0
autocmd BufReadPost *.cpp,*.c,*.h,*.hpp,*.cc,*.cxx call tagbar#autoopen()
nmap <F6> :TagbarToggle<CR>

let NERDChristmasTree=0
let NERDTreeWinSize=35
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos="left"

autocmd vimenter * if !argc()|NERDTree| endif
autocmd bufenter * if (winnr("$")==1&&exists("b:NERDTree")&&b:NERDTree.isTabTree())|q|endif
nmap<F5> :NERDTreeToggle<cr>

let g:ycm_complete_in_comments=1
let g:ycm_collect_identifiers_from_comments_and_string=0

let g:ycm_complete_in_strings=1
let g:ycm_collect_identifiers_from_tags_files=1

let g:ycm_collect_identifiers_from_tags_files=1

let g:ycm_min_num_of_chars_for_completion=2
let g:ycm_cache_omnifunc=0
autocmd InsertLeave * if pumvisible()==0 | pclose|endif

let g:ycm_seed_identifiers_with_syntax=1

let g:ycm_goto_buffer_command='horizontal-split'
nnoremap <Leader>g :YcmCompleter GoTo<CR>

execute pathogen#infect()
call pathogen#helptags()
