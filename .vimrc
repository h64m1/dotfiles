" curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" Reload .vimrc and :PlugInstall to install plugins.
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/pangloss/vim-javascript'
Plug 'https://github.com/tomasiser/vim-code-dark'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

syntax enable

" setup for lightline-vim
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

let g:solarized_termcolors=256
set background=dark
" colorscheme solarized
colorscheme codedark
