call plug#begin('~/.local/share/nvim/plugged')

Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/itchyny/lightline.vim'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/jacoborus/tender.vim'

call plug#end()

set relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
" set expandtab

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
colorscheme tender
