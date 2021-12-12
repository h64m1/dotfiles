
" plugins
source $HOME/.config/nvim/plugin.vim
" coc-analyzer
source $HOME/.config/nvim/coc.vim
" vim-airline
source $HOME/.config/nvim/vim-airline.vim

" base settings
set relativenumber
set smarttab
set cindent
set tabstop=2
set shiftwidth=2

" カーソル位置記憶
augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END

" If you have vim >=8.0 or Neovim >= 0.1.5
if (has("termguicolors"))
 set termguicolors
endif

" For Neovim 0.1.3 and 0.1.4
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" Theme
syntax enable
colorscheme tender

