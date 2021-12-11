call plug#begin('~/.local/share/nvim/plugged')


Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/jacoborus/tender.vim'
Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim'

" resize window by Ctrl+e with h,j,k,l
Plug 'https://github.com/simeji/winresizer'


call plug#end()
