set nocompatible              " be iMproved
filetype off                  " required!
let mapleader = ','

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My bundles here:
Plugin 'tpope/vim-fugitive' " git 
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'scrooloose/nerdcommenter'
Plugin 'kien/ctrlp.vim' " file finder c-p
Plugin 'itchyny/lightline.vim' " vim status line bottom
Plugin 'scrooloose/nerdtree' 
Plugin 'moll/vim-node'
Plugin 'walm/jshint.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'marijnh/tern_for_vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'fatih/vim-go'
Plugin 'Valloric/YouCompleteMe'
Plugin 'majutsushi/tagbar'

" go code settings
if exists("g:did_load_filetypes")
	filetype off
	filetype plugin indent off
endif

set runtimepath+=/usr/local/opt/go/libexec/misc/vim

call vundle#end()            " required
filetype plugin indent on    " required

set omnifunc=syntaxcomplete#Complete
set number

" Keys remap
map <C-n> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <Leader>s <Plug>(go-implements)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

" Nertree settings
set laststatus=2
set encoding=utf-8

" ctrlp settings 
set wildignore+=*.git 

" omnicomplete settings
set completeopt=longest,menuone
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Theme
syntax enable
set background=dark
let g:solarized_contrast="high"
let g:solarized_termcolors=256
colorscheme solarized

nmap <F1> :set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
imap <F1> <Esc>:set paste<CR>:r !pbpaste<CR>:set nopaste<CR>
nmap <F2> :.w !pbcopy<CR><CR>
vmap <F2> :w !pbcopy<CR><CR>

" keys
set backspace=2 " make backspace work like most other apps

" tabs settings 
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

"
" Brief help
" :PluginList          - list configured bundles
" :PluginInstall(!)    - install (update) bundles
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ

" NOTE: comments after Plugin commands are not allowed.
