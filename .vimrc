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
Plug 'https://github.com/leafgarland/typescript-vim'

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'

" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

" Initialize plugin system
call plug#end()

syntax enable
filetype plugin indent on


" setup for lightline-vim
set laststatus=2
if !has('gui_running')
  set t_Co=256
endif

colorscheme codedark

" if has('mac')
"     set ttimeoutlen=1
"     let g:imeoff = 'osascript -e "tell application \"System Events\" to key code 102"'
"     augroup MyIMEGroup
"       autocmd!
"       autocmd InsertLeave * :call system(g:imeoff)
"     augroup END
"    noremap <silent> <ESC> <ESC>:call system(g:imeoff)<CR>
" endif

" use solarized dark for markdown
" let g:solarized_termcolors=256
" autocmd BufWinEnter,FileType markdown setlocal background=dark
" autocmd BufWinEnter,FileType markdown colorscheme solarized

augroup SyntaxSettings
    autocmd!
    autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END

augroup vimrcEx
  au BufRead * if line("'\"") > 0 && line("'\"") <= line("$") |
  \ exe "normal g`\"" | endif
augroup END


set expandtab
set tabstop=2
set autoindent
set smartindent
set shiftwidth=2
set hlsearch
set incsearch
