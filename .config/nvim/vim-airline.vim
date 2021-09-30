" , e.g. let g:airline_theme='simple'
" let g:airline_theme='simple'
" let g:airline_theme='wombat'
" let g:airline_theme='molokai'
let g:airline_theme='papercolor'
" let g:airline_theme='solarized'

" The statusline can alternatively be drawn on top, making room for other plugins to use the statusline:
" The example shows a custom statusline setting, that imitates Vims default statusline, while allowing to call custom functions.
" Use :let g:airline_statusline_ontop=1 to enable it.
" let g:airline_statusline_ontop=1

" arrow, need to install powerline fonts
" see: https://github.com/powerline/fonts
" also, need to fix the fonts in iTerm, see below
" https://github.com/powerline/fonts/issues/44
let g:airline_powerline_fonts = 1

" show tabline on top
let g:airline#extensions#tabline#enabled = 1

function! AirlineInit()
  let g:airline_section_a = airline#section#create(['mode',' ','branch'])
endfunction
autocmd VimEnter * call AirlineInit()



