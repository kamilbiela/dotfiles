set nocompatible              " be iMproved
filetype off                  " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My bundles here:
Bundle 'tpope/vim-fugitive'	 
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/nerdcommenter'
Bundle 'kien/ctrlp.vim'
Bundle 'itchyny/lightline.vim'
Bundle 'scrooloose/nerdtree'
Bundle 'altercation/vim-colors-solarized' 
Bundle 'moll/vim-node'
Bundle 'walm/jshint.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'evidens/vim-twig'

" Nertree settings
map <C-n> :NERDTreeToggle<CR>
set laststatus=2
set encoding=utf-8

" Theme
syntax enable
set background=dark
let g:solarized_termcolors=256
colorscheme solarized

filetype plugin indent on     " required!
filetype plugin on
set omnifunc=syntaxcomplete#Complete

" Keys remap


"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install (update) bundles
" :BundleSearch(!) foo - search (or refresh cache first) for foo
" :BundleClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ

" NOTE: comments after Bundle commands are not allowed.
