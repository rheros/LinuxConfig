filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#rc()

if filereadable(expand("~/.vimrc.bundles"))
    source ~/.vimrc.bundles
endif

nnoremap <F5> :call CompileRunGcc()<CR>
func!CompileRunGcc()
        exec "w"
        if &filetype=='python'
                if search("@profile")
                        exec "AsyncRun kernprof -l -v %"
                        exec "copen"
                        exec "wincmd p"
                elseif search("set_trace()")
                        exec "!python3 %"
                else
                        exec "AsyncRun -raw python3 %:p"
                        exec "copen"
                        exec "wincmd p"
                endif
        endif
endfunc
set nu
set encoding=utf8
set paste 
set expandtab
set autoindent
set tabstop=4
set softtabstop=4
colorscheme molokai
set shiftwidth=4
"set incsearch
"set hlsearch
set ignorecase
set foldlevel=0
syntax on
set autoread
set showmatch
"set cursorline
"set cursorcolumn
set report=0
set ruler
syntax enable
set fdm=indent
set rtp+=~/.vim/bundle/vundle
"For Python Debug
