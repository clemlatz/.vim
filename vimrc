"Inspired from http://marcgg.com/blog/2016/03/01/vimrc-example/

"Pathogen
execute pathogen#infect()

"Character encoding
set encoding=utf-8
set fileencoding=utf-8

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
"nnoremap <silent> <Esc> :nohlsearch<Bar>:echo<CR>
"https://github.com/tpope/vim-pathogen/issues/102#issuecomment-45413916

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

"Syntaxic config
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"stylelint config
let g:syntastic_scss_checkers=["stylelint"]

"eslint config
let g:syntastic_javascript_checkers=["eslint"]
