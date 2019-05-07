set nocompatible              " be iMproved, required
set relativenumber
set nu
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
so ~/.vim/plugins.vim

" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')
" let Vundle manage Vundle, required
"Plugin 'VundleVim/Vundle.vim'
"Plugin 'vim-syntastic/syntastic'
"Plugin 'scrooloose/nerdtree'
"Plugin 'lervag/vimtex'
" autocmd vimenter * NERDTree
"nmap <F6> :NERDTreeToggle<CR>
" All of your Plugins must be added before the following line
"call vundle#end()            " required
"filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
