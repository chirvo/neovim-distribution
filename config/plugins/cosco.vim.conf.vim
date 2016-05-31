autocmd FileType javascript,css,json,javascript.jsx nnoremap <silent> <leader>; :call cosco#commaOrSemiColon()<CR>
autocmd FileType javascript,css,json,javascript.jsx inoremap <silent> <leader>; <c-o>:call cosco#commaOrSemiColon()<CR><Esc>
