"    _  _        _           _________ _______ 
"   / )( (    /|( \  |\     /|\__   __/(       )
"  / / |  \  ( | \ \ | )   ( |   ) (   | () () |
" ( (  |   \ | |  ) )| |   | |   | |   | || || |      ____             __ _       
" | |  | (\ \) |  | |( (   ) )   | |   | |(_)| |     / ___|___  _ __  / _(_) __ _ 
" ( (  | | \   |  ) ) \ \_/ /    | |   | |   | |    | |   / _ \| '_ \| |_| |/ _` |
"  \ \ | )  \  | / /   \   /  ___) (___| )   ( |    | |__| (_) | | | |  _| | (_| |
"   \_)|/    )_)(_/     \_/   \_______/|/     \|     \____\___/|_| |_|_| |_|\__, |
"                                                                           |___/ 
" Shared configuration for `vim` and `nvim`

" Change leader
let mapleader=","

source $HOME/.config/dotfiles/data/vim/shared_with_nvim-plugins.vim

" Overall appearance
syntax on              " Enable syntax-highlighting
set background=dark
set encoding=utf-8
set conceallevel=0     " Don't hide characters (https://vi.stackexchange.com/a/7263/40980)
set fileencoding=utf-8
set showtabline=2      " Always show tabs
set t_Co=256
"colorscheme desert


" Lines
set number           " Display absolute line numbers
set relativenumber   " Display relative line numbers (except for the current line when `number` is set)
set showmatch
set wrap             " Enable wrapping

" Highlight cursor
set cursorline
"set cursorcolumn
highlight CursorLine cterm=None ctermbg=236 "rgb=48,48,48 https://vim.fandom.com/wiki/Xterm256_color_names_for_console_Vim

" Indenting
set breakindent                             " Indent wrapped lines
"set breakindentopt=shift:2 " Add 2 spaces to wrapped line indentations
set showbreak=↪                             " Display this character for all breaks
set expandtab                               " Replace tabs with spaces
set shiftwidth=2           " Width for autoindents
set softtabstop=2          " See multiple spaces as tabstops so <BS> is sane
set tabstop=2              " Tabs display as 2 spaces

set colorcolumn=80,100    " Highlight far columns
highlight ColorColumn ctermbg=236

" Searching
set hlsearch

" Drain regex' magic (https://unix.stackexchange.com/questions/23419/vim-regex-not-need-to-escape)
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v

" Splits
set splitright
set splitbelow

" Miscellaneous
filetype plugin on
set autochdir             " Change working directory to currently opened file
set clipboard=unnamedplus " Use system clipboard
set ignorecase
set ttyfast               " Speed up scrolling in Vim

"  __  __                   _                 
" |  \/  | __ _ _ __  _ __ (_)_ __   __ _ ___ 
" | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
" | |  | | (_| | |_) | |_) | | | | | (_| \__ \
" |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"              |_|   |_|            |___/     

" Escape insert mode whilst avoiding carpal tunnel syndrome
imap kj <ESC>

no  <leader> <Nop>
"ino <leader> <Nop>
vno <leader> <Nop>

" Disable arrow keys
"no  <up>    <Nop>
"no  <left>  <Nop>
"no  <down>  <Nop>
"no  <right> <Nop>
"ino <up>    <Nop>
"ino <left>  <Nop>
"ino <down>  <Nop>
"ino <right> <Nop>
"vno <up>    <Nop>
"vno <left>  <Nop>
"vno <down>  <Nop>
"vno <right> <Nop>

" Use alt + hjkl to resize windows
noremap <M-j> :resize -2<CR>
noremap <M-k> :resize +2<CR>
noremap <M-h> :vertical resize -2<CR>
noremap <M-l> :vertical resize +2<CR>

" Better tabbing
vnoremap < <gv
vnoremap > >gv

" Alternate way to save
noremap <C-s> :w<CR>
inoremap <C-s> <ESC>:w<CR>a

" Quick pairs
imap <leader>' ''<ESC>i
imap <leader>" ""<ESC>i
"imap <leader>{ {}<ESC>i
imap <leader>[ []<ESC>i
imap <leader>( ()<ESC>i
imap <leader>< <><ESC>i

" Curly braces
imap <leader>{ {<CR>}<ESC>O

" Insert space after cursor
nmap <leader><Space> a <ESC>

" Copy file / directory path to clipboard
nnoremap <silent> yc :let @+=expand('%:p')<CR>
nnoremap <silent> yd :let @+=expand('%:p:h')<CR>

" Buffer management
nnoremap <leader>bb :ls<CR>:b<space>
nnoremap <leader>bh :bprevious<CR>
nnoremap <leader>bl :bnext<CR>

" Jump to the last position when reopening a file
"if has("autocmd")
"   au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
"     \| exe "normal! g'\"" | endif
"endif

