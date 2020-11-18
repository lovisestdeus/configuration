if ! filereadable(expand('~/.vim/autoload/plug.vim'))
  echo "Downloading junegunn/vim-plug to manage plugins..."
  silent !mkdir -p ~/.config/nvim/autoload/
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall
endif

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree' |
  \ Plug 'Xuyuanp/nerdtree-git-plugin' |
  \ Plug 'ryanoasis/vim-devicons' |
  \ Plug 'jistr/vim-nerdtree-tabs'

Plug 'junegunn/goyo.vim', { 'on': 'Goyo' }

Plug 'yggdroot/indentline'

Plug 'terryma/vim-multiple-cursors'

Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }
Plug 'dikiaap/minimalist'

call plug#end()

let g:indentline_color_term = 239
let g:indentLine_char_list = ['|', '¦', '┆', '┊']

let g:goyo_width = 100

" For Accidental quick saves. I sometimes press "w" while pressing shift...
command! -nargs=* W w
