" Use emmet only for html and style files
let g:user_emmet_install_global = 0
autocmd FileType html,css,sass,scss,stylus,less EmmetInstall

" from :h zencoding-customize-keymappings
"imap <buffer><expr><tab> emmet#expandAbbrIntelligent("\<tab>")

"let g:user_zen_expandabbr_key = '<c-e>'
"let g:user_emmet_complete_tag = 1
