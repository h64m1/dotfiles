
set laststatus=2
" let g:airline_theme='tomorrow'
let g:airline_theme='papercolor'
let g:airline_powerline_fonts=1
" let g:airline#extensions#tabline#enabled = 1
" let g:airline#extensions#tabline#buffer_idx_mode = 1
" let g:airline#extensions#whitespace#mixed_indent_algo = 1

" show tabline on top
let g:airline#extensions#tabline#enabled = 1


function! AirlineInit()
	let g:airline_section_a = airline#section#create(['mode', ' ', 'branch'])
endfunction
autocmd VimEnter * call AirlineInit()
