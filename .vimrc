set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
autocmd bufwritepost .vimrc redraw! | source %

" alternatively, pass a path where Vundle should install plugins
" call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'dense-analysis/ale'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'preservim/nerdtree'
"Plugin 'python-mode/python-mode'
Plugin 'kien/ctrlp.vim'
Plugin 'psf/black'
Plugin 'xolox/vim-notes'
Plugin 'xolox/vim-misc'
Plugin 'itmammoth/doorboy.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
" filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" ENV
let $RC="$HOME/.vimrc"


setlocal path=.,**
" Better Copy and Paste
set clipboard=unnamed
set pastetoggle=<F2>
"Mouse
set mouse-=a
let mapleader=","
syntax on
"
"Window
nnoremap <Leader>v :vertical resize +2<CR>
nnoremap <Leader>z :vertical resize -2<CR>
nnoremap <Leader>x :resize +2<CR>
nnoremap <Leader>c :resize -2<CR>

"terminal 
nnoremap <Leader>t :bel vert term<CR>  
nnoremap <Leader>tt :bel term<CR>  
"
"redo
nnoremap r <C-r>
"
"
"reloading on edit elsewhere
set autoread
nnoremap <C-\> :!black %<CR>
inoremap <C-\> <esc>:!black %<CR>
vnoremap <C-\> <esc>:!black %<CR>
"
"
"
"Quicksave command
noremap <C-s> :update<CR> 
vnoremap <C-s> <esc>:update<CR>
inoremap <C-s> <esc>:update<CR>

"Quick quit command
noremap <Leader>e :quit<CR>
noremap <Leader>ee :q!<CR>
noremap <Leader>EE :qa!<CR>
noremap <Leader>E :qa<CR>

"Ctrl+<movement> to move around with splits
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
"Easier movement between tabs
noremap <Leader>n <esc>:tabprevious<CR>
noremap <Leader>m <esc>:tabnext<CR>

"vim terminal edit mode, 
"imap <Leader>/  <c-w>N  

"Switching between modes jk switches between i and n 
"kl switches between v and i
",. switches between n and v
"Switching between modes jk switches between i and n 

"map sort function to a key
vnoremap <Leader>s :sort<CR>

"Easier moving of code blocks
vnoremap < <gv
vnoremap > >gv

inoremap jj <Esc>
"nnoremap <C-f> :NERDTreeFocus <CR>
nnoremap <C-n> :NERDTreeToggle <CR>
"nnoremap <C-n> :NERDTree <CR>
nnoremap <C-t> :tabnew <CR>

"au BufNewFile,BufRead *.py
set tabstop=4
set softtabstop=4
set shiftwidth=4   
set expandtab
set autoindent
set smartindent
set fileformat=unix
set shiftround
                                                                                                                                                
"Get rid of swap and backup files
set noswapfile
set nobackup
set nowritebackup

set ttimeoutlen=50

"Showing line numbers and lengths
set number 
set relativenumber
set textwidth=79 
"set nowrap
set fo-=t
set colorcolumn=80
highlight ColorColumn ctermbg=233

"Easier formatting of paragraphs
vmap Q gq
nmap Q gqap

set history=700
set undolevels=700

"Make search case sensitive
set hlsearch
set incsearch
set ignorecase
set smartcase
"unhighlight
map <leader><leader> :let @/=""<CR>

" Colour Scheme
colorscheme atom-dark-256
set backspace=indent,eol,start
set bg=dark
set t_Co=256
highlight LineNr ctermfg=2

"CTRLP Plugin settings
let g:ctrlp_max_height=30
set wildignore+=*.pyc
set wildignore+=*_build/*
set wildignore+=*/coverage/*

"Set breakpoints for the ipdb debugger
map <Leader>b Oimport ipdb; ipdb.set_trace() # BREAKPOINT<C-c>

"Set folding
set foldmethod=indent
set foldlevel=99
nnoremap <space> za
nnoremap <space>m zM
nnoremap <space>n zR
"inoremap <C-space> <esc>za
"inoremap <C-space>m <esc>zM
"inoremap <C-space>n <esc>zR
"ALE settings
let g:ale_completion_enabled = 1
let g:ale_linters = {'python': []}
let g:ale_fixers = {'python': ['black']}
let g:ale_fix_on_save = 1 


"Disable Arrows
map <Up> :<CR>
map <Down> :<CR>
map <Left> :<CR>
map <Right> :<CR>


inoremap <Up> <C-o>i
inoremap <Down> <C-o>i
inoremap <Left> <C-o>i
inoremap <Right> <C-o>i

let g:doorboy_additional_brackets = {
\    'vim': ['<>'],
\   'html': ['<>']
\}

