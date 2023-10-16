colorscheme kanagawa



set nocompatible " be iMproved, required
filetype off     " required
filetype plugin indent on

let mapleader = ","

set wildmenu " when opening a file with e.g. :e ~/.vim<TAB> there is a graphical menu of all the matches
set ttyfast
set lazyredraw
set updatetime=300
set hidden " Open other files if current one is not saved
set number
set numberwidth=4
set ruler

map j gj
map k gk

set autoindent
set cindent
set smartindent

set foldmethod=syntax
set foldlevel=99

" Disable backups and swap files
set nobackup
set nowritebackup
set noswapfile

set ignorecase " Ignore case case searching
set smartcase  " When searching try to be smart about cases
set incsearch  " Jumping search

set laststatus=2

" Delete characters outside of insert area
set backspace=indent,eol,start

let &t_SI = "\e[6 q" " insert mode
let &t_SR = "\e[4 q" " replace mode
let &t_EI = "\e[2 q" " everything elese

nmap <Leader>m :NvimTreeFindFile<CR>
nmap <Leader>M :NvimTreeToggle<CR>

nnoremap <C-s> :w<CR>
vnoremap <C-s> :w<CR>
inoremap jj <Esc>
nnoremap <Esc> :noh<CR>
tnoremap <Esc> <C-\><C-n>

nnoremap <S-j> :m .+1<CR>==
nnoremap <S-k> :m .-2<CR>==
vnoremap <S-j> :m '>+1<CR>gv=gv
vnoremap <S-k> :m '<-2<CR>gv=gv

nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

nnoremap <C-j> <C-d>zz<CR>
nnoremap <C-k> <C-u>zz<CR>
nnoremap <C-u> :redo<CR>
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>


noremap <Leader>y "*y
noremap <Leader>d "*d
noremap <Leader>p "*p
noremap <Leader>P "*P

" prevent update buffer after past
vnoremap p "_dp"<CR>
vnoremap P "_dP"<CR>

vnoremap // y/\V<C-R>=escape(@",'/\')<CR><CR><S-n>
vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>

nnoremap <leader>rn :set relativenumber!<cr>
set relativenumber

noremap n nzz
nnoremap N Nzz

set ttimeoutlen=1

set cursorline
hi CursorLine ctermfg=None ctermbg=None gui=underline cterm=underline
hi Visual ctermfg=253 ctermbg=25 gui=underline cterm=underline
highlight Cursor guifg=white guibg=black
hi Search guibg=yellow guifg=black

set spell spelllang=en_us

set autoread
