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

" if has('mac')
"     set ttimeoutlen=1
"     let g:imeoff = 'osascript -e "tell application \"System Events\" to key code 102"'
"     augroup MyIMEGroup
"      autocmd!
"      autocmd InsertLeave * :call system(g:imeoff)
"    augroup END
"    noremap <silent> <ESC> <ESC>:call system(g:imeoff)<CR>
"endif

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
