set nocompatible              " be iMproved, required
"filetype off                  " required
"filetype plugin indent on
set exrc
syntax on
set encoding=UTF-8

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" All of your Plugins must be added before the following line
" My Plugins
Plugin 'scrooloose/nerdtree'
Plugin 'valloric/youcompleteme'
Plugin 'mattn/emmet-vim'
Plugin 'nvie/vim-flake8'
Plugin 'klen/python-mode'
Plugin 'pearofducks/ansible-vim'
Plugin 'ekalinin/dockerfile.vim'
Plugin 'vim-scripts/nginx.vim'
Plugin 'glench/vim-jinja2-syntax'
Plugin 'yggdroot/indentline'
Plugin 'junegunn/vim-easy-align'
Plugin 'metakirby5/codi.vim'
Plugin 'morhetz/gruvbox'
Plugin 'c9s/vikube.vim'
Plugin 'itchyny/lightline.vim'
" Plugin 'evanmiller/nginx-vim-syntax'
" Plugin 'nginx.vim'
Plugin 'chase/vim-ansible-yaml'
Plugin 'juliosueiras/vim-terraform-completion'
Plugin 'hashivim/vim-terraform'
Plugin 'vim-syntastic/syntastic'
Plugin 'andrewstuart/vim-kubernetes'
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

" ==== Colors and other basic settings
syntax enable
set ruler
set hidden
set number
set laststatus=2
set smartindent
set tabstop=4

" ==== NERDTREE
let NERDTreeIgnore = ['__pycache__', '\.pyc$', '\.o$', '\.so$', '\.a$', '\.swp', '*\.swp', '\.swo', '\.swn', '\.swh', '\.swm', '\.swl', '\.swk', '\.sw*$', '[a-zA-Z]*egg[a-zA-Z]*', '.DS_Store']

let NERDTreeShowHidden=1
let g:NERDTreeWinPos="left"
let g:NERDTreeDirArrows=0
map <C-t> :NERDTreeToggle<CR>

" === flake8
let g:flake8_show_in_file=1

" === terraform
let g:terraform_align=1
let g:terraform_fold_sections=1
let g:terraform_fmt_on_save=1

" === Ansible
let g:ansible_options = {'ignore_blank_lines': 0}
let g:ansible_options = {'documentation_mapping': '<C-K>'}

" Syntastic Config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

