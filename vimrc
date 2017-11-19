"Inspired from http://marcgg.com/blog/2016/03/01/vimrc-example/

"Pathogen
execute pathogen#infect()

"Detect file type
filetype on

"Enable syntaxic highlighting
syntax on

"Theme
set background=dark
colorscheme Tomorrow-Night
set guifont=Menlo\ Regular:h18

"Allow backspace to delete
set backspace=indent,eol,start

"Add add column after 90 chars
set colorcolumn=90

"Show line numbers
set number

"Set leader key
let mapleader=" "

"Reload vim config shortcut
map <leader>s :source ~/.vimrc<CR>

"Keep more info in memory to speed things up
set hidden
set history=100

"Indenting
filetype indent on
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent

"Remove whitespaces on save
autocmd BufWritePre * :%s/\s\+$//e

"Highlight found words when searching
set hlsearch

"Cancel search with Escape key
nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>

"Re-open previously opened file
nnoremap <leader><leader> :e#<CR>

"Show matching parenthesis
set showmatch

"Show lightline statusbar
:set laststatus=2

"NERDtree config
let NERDTreeShowHidden=1 "Show hidden files
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>j :NERDTreeFind<CR>
let NERDTreeIgnore=['\.DS_Store', '\~$', '\.swp']

