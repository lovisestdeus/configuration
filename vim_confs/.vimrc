set shell=$SHELL
set encoding=UTF-8

" Importing other configs
source $HOME/.vim_config/plugins.vim
source $HOME/.vim_config/bindings.vim
source $HOME/.vim_config/lightline.vim

" Colors
syntax on   " Enable syntax highlighting

:colo minimalist " or you can also select 'challenger_deep'

hi Normal guibg=NONE ctermbg=NONE ctermfg=white 
highligh clear LineNr
highligh clear SignColumn 

set hidden
set showtabline=2

set laststatus=2

" Show line numbers and make current line bold
set number
set cursorline
"highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE guibg=NONE guifg=NONE
highlight CursorLineNR cterm=bold

set ignorecase
set smartcase
set mouse=a

"set nobackup    " Disables backup files - recommanded by Coc
"set nowritebackup   " Disables backup files - recommanded by Coc
"set undofile

set clipboard=unnamedplus
set splitright
set splitbelow

set conceallevel=0

" Whitespace configs
set tabstop=2
set shiftwidth=2
set expandtab
set ai
set number
set hlsearch
set ruler
highlight Comment ctermfg=green

" From github:rexim/dotfiles
filetype plugin indent on
set guioptions-=m
set guioptions-=T
set noesckeys
set relativenumber
