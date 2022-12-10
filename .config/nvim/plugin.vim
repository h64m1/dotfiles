call plug#begin('~/.local/share/nvim/plugged')


Plug 'https://github.com/neoclide/coc.nvim', {'branch': 'release'}
Plug 'https://github.com/preservim/nerdtree'

" theme
Plug 'https://github.com/jacoborus/tender.vim'

" status line
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/vim-airline/vim-airline-themes'

" toml
Plug 'https://github.com/cespare/vim-toml', { 'branch': 'main' }

" fzf
Plug 'https://github.com/junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'https://github.com/junegunn/fzf.vim'

" resize window by Ctrl+e with h,j,k,l
Plug 'https://github.com/simeji/winresizer'

" indent
Plug 'https://github.com/Yggdroot/indentLine'

" rust
Plug 'https://github.com/rust-lang/rust.vim'

" ziglang
Plug 'https://github.com/ziglang/zig.vim'

call plug#end()
