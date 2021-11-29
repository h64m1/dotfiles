call plug#begin('~/.local/share/nvim/plugged')

Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/preservim/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'https://github.com/jacoborus/tender.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'
Plug 'https://github.com/mhinz/vim-startify'
Plug 'https://github.com/cespare/vim-toml', { 'branch': 'main' }

call plug#end()
