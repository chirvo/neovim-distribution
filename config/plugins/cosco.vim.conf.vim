autocmd FileType javascript,css,json,javascript.jsx nnoremap <silent> ; :call cosco#commaOrSemiColon()<CR>
autocmd FileType javascript,css,json,javascript.jsx inoremap <silent> ; <c-o>:call cosco#commaOrSemiColon()<CR><Esc>
