set nocompatible              " be iMproved, required
set number
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
filetype off                  " required
if !exists("g:syntax_on")
	syntax enable
endif
map ; :
noremap ;; ;
function OpenNERDTree()
  execute ":NERDTreeFocus"
endfunction
command -nargs=0 OpenNERDTree :call OpenNERDTree()
set rtp+=/usr/local/opt/fzf
" Better command-line completion
set wildmenu
 
" Show partial commands in the last line of the screen
set showcmd
 
" Highlight searches (use <C-L> to temporarily turn off highlighting; see the
" mapping of <C-L> below)
set hlsearch

" Enable use of the mouse for all modes
set mouse=a

"nmap <A-t> OpenNERDTree<CR>

