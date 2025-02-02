"    _  _        _            _________ _______ 
"   / )( (    /|( \  |\     /|\__   __/(       )
"  / / |  \  ( | \ \ | )   ( |   ) (   | () () |
" ( (  |   \ | |  ) )| |   | |   | |   | || || |    ____  _             _           
" | |  | (\ \) |  | |( (   ) )   | |   | |(_)| |   |  _ \| |_   _  __ _(_)_ __  ___ 
" ( (  | | \   |  ) ) \ \_/ /    | |   | |   | |   | |_) | | | | |/ _` | | '_ \/ __|
"  \ \ | )  \  | / /   \   /  ___) (___| )   ( |   |  __/| | |_| | (_| | | | | \__ \
"   \_)|/    )_)(_/     \_/   \_______/|/     \|   |_|   |_|\__,_|\__, |_|_| |_|___/
"                                                                 |___/             

if has('nvim')
  let MYVIMDIR = "$HOME/.config/dotfiles/data/nvim"
else
  let MYVIMDIR = "$HOME/.config/dotfiles/data/vim"
endif
if empty(glob(MYVIMDIR . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.MYVIMDIR.'/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'wincent/terminus'
Plug 'ntpeters/vim-better-whitespace'
Plug 'flazz/vim-colorschemes'
Plug 'Yggdroot/indentLine'
if has('nvim')
  Plug 'rbgrouleff/bclose.vim' " Required for 'franoiscabrol/ranger.vim' in nvim
endif
Plug 'francoiscabrol/ranger.vim'
Plug 'haya14busa/incsearch.vim'
Plug 'Glench/Vim-Jinja2-Syntax'
Plug 'thaerkh/vim-workspace'
call plug#end()

"if has('nvim')
  "Plug 'rmagatti/auto-session'
"endif

" Other Plugins I might want to checkout sometime:
" junegunn/fzf.vim
" thaerkh/vim-workspace
" ms-jpq/coq-nvim
" https://github.com/DNLHC/glance.nvim

let g:workspace_autosave_untrailspaces = 0
let g:workspace_autosave_untrailtabs = 0
let g:workspace_session_disable_on_args = 1
let g:workspace_session_directory = $XDG_DATA_HOME . '/vim/sessions/'
let g:workspace_undodir = $XDG_DATA_HOME . '/vim/undodir/'
if !isdirectory(g:workspace_session_directory)
  call mkdir(g:workspace_session_directory, 'p')
endif

let g:enable_bold_font = 1
set background=dark
colorscheme gruvbox
let g:indentine_char = '|'
let g:indentLine_fileTypeExclude = ['markdown','json','yaml', 'tex'] " https://vi.stackexchange.com/a/19229/40980


"  __  __                   _                 
" |  \/  | __ _ _ __  _ __ (_)_ __   __ _ ___ 
" | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
" | |  | | (_| | |_) | |_) | | | | | (_| \__ \
" |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"              |_|   |_|            |___/     

" vim-workspace
nnoremap <leader>s :ToggleWorkspace<CR>
