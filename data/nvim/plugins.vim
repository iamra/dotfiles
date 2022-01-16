"  _                _________ _______ 
" ( (    /||\     /|\__   __/(       )
" |  \  ( || )   ( |   ) (   | () () |
" |   \ | || |   | |   | |   | || || |      ____             __ _       
" | (\ \) |( (   ) )   | |   | |(_)| |     / ___|___  _ __  / _(_) __ _ 
" | | \   | \ \_/ /    | |   | |   | |    | |   / _ \| '_ \| |_| |/ _` |
" | )  \  |  \   /  ___) (___| )   ( |    | |__| (_) | | | |  _| | (_| |
" |/    )_)   \_/   \_______/|/     \|     \____\___/|_| |_|_| |_|\__, |
"                                                                 |___/ 
"  ____  _             _           
" |  _ \| |_   _  __ _(_)_ __  ___ 
" | |_) | | | | |/ _` | | '_ \/ __|
" |  __/| | |_| | (_| | | | | \__ \
" |_|   |_|\__,_|\__, |_|_| |_|___/
"                |___/             

if empty(glob('$HOME/.config/dotfiles/data/nvim/autoload/plug.vim'))
  silent !curl -fLo $HOME/.config/dotfiles/data/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'vim-scripts/RltvNmbr.vim'
call plug#end()

let g:enable_bold_font = 1
set background=dark

"  __  __                   _                 
" |  \/  | __ _ _ __  _ __ (_)_ __   __ _ ___ 
" | |\/| |/ _` | '_ \| '_ \| | '_ \ / _` / __|
" | |  | | (_| | |_) | |_) | | | | | (_| \__ \
" |_|  |_|\__,_| .__/| .__/|_|_| |_|\__, |___/
"              |_|   |_|            |___/     

no <leader>n :NERDTreeToggle<cr>

