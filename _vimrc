set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
if has('win32')
  set rtp+=$VIM/vimfiles/bundle/Vundle.vim
else
  set rtp+=~/.vim/bundle/Vundle.vim
endif
if has('win32')
  call vundle#begin('$VIM/vimfiles/bundle')
else
  call vundle#begin()
endif
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" add Plugins here
Plugin 'tomasr/molokai'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-scripts/The-NERD-tree'
"Plugin 'Valloric/YouCompleteMe'
"Plugin 'rdnetto/YCM-Generator'
"Plugin 'tdcdev/ycm_simple_conf'
Plugin 'vim-scripts/taglist.vim'
Plugin 'Lokaltog/vim-powerline'
" switch header/cpp files quickly
Plugin 'vim-scripts/a.vim' 
" brackets auto-completion
Plugin 'Raimondi/delimitMate'
"Plugin 'scrooloose/syntastic'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

syntax on
set background=dark
colorscheme molokai
set t_Co=256

set number

" auto reload vimrc
augroup reload_vimrc " {
    autocmd!
    autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

set cursorline

" font setting
if has('gui_running') && has('win32')
	set guifont=Consolas_for_Powerline_FixedD:h9
endif

if has('gui_running') 
    set guioptions+=c
    set guioptions-=m
    set guioptions-=T
    set guioptions-=L
    set guioptions-=r
    set guioptions-=b
    set showtabline=0
endif

" set F11 to be the fullscreen button
if has('win32')
	map <F11> <Esc>:call libcallnr("gvimfullscreen.dll", "ToggleFullScreen", 0)<CR>
endif

set encoding=utf-8
set langmenu=zh_CN.UTF-8
language message zh_CN.UTF-8
set fileencodings=utf-8,gbk
" solve chinese messy code

source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

let mapleader=","

map <leader>nt :NERDTree<CR>
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"let g:ycm_simple_conf_active = 0

set backspace=2

"let g:ycm_confirm_extra_conf=0
"let g:ycm_show_diagnostics_ui=0
"let g:ycm_global_ycm_extra_conf='C:/Users/weixue.cx/.ycm_extra_conf.py'
"let g:ycm_collect_identifiers_from_tags_files=1
"nnoremap <leader>j :YcmCompleter GoToDefinitionElseDeclaration<CR>
"inoremap <expr> <CR>       pumvisible() ? "\<C-y>" : "\<CR>"

set tags=tags;
let g:Tlist_Use_Right_Window=1
let g:Tlist_Show_One_File=1
map <leader>tl :TlistToggle<CR>

let g:Powerline_symbols = 'fancy'
"let g:Powerline_theme="solarized256"
"let g:Powerline_colortheme="solarized256"
set laststatus=2
