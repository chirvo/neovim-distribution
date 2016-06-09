" Use emmet only for html and css files
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" from :h zencoding-customize-keymappings
imap <buffer> <expr> <tab> emmet#expandAbbrIntelligent("\<tab>")

"let g:user_zen_expandabbr_key = '<c-e>'
let g:user_emmet_complete_tag = 1
