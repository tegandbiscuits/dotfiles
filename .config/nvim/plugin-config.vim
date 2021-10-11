" ==================
" GitGutter Settings
" ==================

highlight GitGutterAdd    guifg=#009900 guibg=<X> ctermfg=2
highlight GitGutterChange guifg=#bbbb00 guibg=<X> ctermfg=3
highlight GitGutterDelete guifg=#ff2222 guibg=<X> ctermfg=1


" ===================
" IndentLine Settings
" ===================

autocmd Filetype json let g:indentLine_enabled = 0
let g:indentLine_char = '¦'


" ================
" Airline Settings
" ================

let g:airline_theme = "palenight"
" let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_powerline_fonts = 1
