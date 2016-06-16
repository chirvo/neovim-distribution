 "Set leader
let mapleader = ','
let maplocalleader = '_'

" Easier moving in tabs and windows
" The lines conflict with the default digraph mapping of <C-K>
map <C-J> <C-W>j<C-W>_
map <C-K> <C-W>k<C-W>_
map <C-L> <C-W>l<C-W>_
map <C-H> <C-W>h<C-W>_
map <Tab><Tab> <C-W>w

" Terminal emulation mappings
tnoremap <Esc> <C-\><C-n>
tnoremap <A-h> <C-\><C-n><C-w>h
tnoremap <A-j> <C-\><C-n><C-w>j
tnoremap <A-k> <C-\><C-n><C-w>k
tnoremap <A-l> <C-\><C-n><C-w>l
nnoremap <A-h> <C-w>h
nnoremap <A-j> <C-w>j
nnoremap <A-k> <C-w>k
nnoremap <A-l> <C-w>l


" Wrapped lines goes down/up to next row, rather than next line in file.
noremap j gj
noremap k gk

" Code folding options
nmap <leader>f0 :set foldlevel=0<CR>
nmap <leader>f1 :set foldlevel=1<CR>
nmap <leader>f2 :set foldlevel=2<CR>
nmap <leader>f3 :set foldlevel=3<CR>
nmap <leader>f4 :set foldlevel=4<CR>
nmap <leader>f5 :set foldlevel=5<CR>
nmap <leader>f6 :set foldlevel=6<CR>
nmap <leader>f7 :set foldlevel=7<CR>
nmap <leader>f8 :set foldlevel=8<CR>
nmap <leader>f9 :set foldlevel=9<CR>

" Reset highlight search
nmap <silent> <leader>/ :nohlsearch<CR>

" Find merge conflict markers
map <leader>fc /\v^[<\|=>]{7}( .*\|$)<CR>

" Shortcuts
" Change Working Directory to that of the current file
cmap cwd lcd %:p:h
cmap cd. lcd %:p:h

" Visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Allow using the repeat operator with a visual selection (!)
" http://stackoverflow.com/a/8064607/127816
vnoremap . :normal .<CR>

" For when you forget to sudo.. Really Write the file.
cmap w!! w !sudo tee % >/dev/null

" Some helpers to edit mode
" http://vimcasts.org/e/14
cnoremap %% <C-R>=fnameescape(expand('%:h')).'/'<cr>
map <leader>ew :e %%
map <leader>es :sp %%
map <leader>ev :vsp %%
map <leader>et :tabe %%

" Ctrl+C/V/X
vmap <C-c> "+yi
vmap <C-x> "+c
vmap <C-v> c<ESC>"+p
imap <C-v> <C-r><C-o>+
" C-M-l for autoformat
vmap <C-M-l> mzgg=G`z<ESC>
imap <C-M-l> <ESC>mzgg=G`z<ESC><I>

" Basic surround support
" From https://github.com/wilmoore/dotfiles/blob/master/active/.vim/vimrc.d/keybindings.vim
" example.com => "example.com"
:no <leader><leader>" gEwi"<esc>Ea"<esc>B
:no <leader>" gEwi"<esc>ea"<esc>B
:vn <leader>" "1c"<esc>"1pa"<esc>B

" example.com => 'example.com'
:no <leader><leader>' gEwi'<esc>Ea'<esc>B
:no <leader>' gEwi'<esc>ea'<esc>B
:vn <leader>' "1c'<esc>"1pa'<esc>B

" example.com => `example.com`
:no <leader><leader>` gEwi`<esc>Ea`<esc>B
:no <leader>` gEwi`<esc>ea`<esc>B
:vn <leader>` "1c`<esc>"1pa`<esc>B

" example.com => *example.com*
:no <leader><leader>* gEwi*<esc>Ea*<esc>B
:no <leader>* gEwi*<esc>ea*<esc>B
:vn <leader>* "1c*<esc>"1pa*<esc>B

" example.com => **example.com**
:no <leader><leader>** gEwi**<esc>Ea**<esc>B
:no <leader>** gEwi**<esc>ea**<esc>B
:vn <leader>** "1c**<esc>"1pa**<esc>B

" example.com => _example.com_
:no <leader><leader>_ gEwi_<esc>Ea_<esc>B
:no <leader>_ gEwi_<esc>ea_<esc>B
:vn <leader>_ "1c_<esc>"1pa_<esc>B

" example.com => {example.com}
:no <leader><leader>{ gEwi{<esc>Ea}<esc>B
:no <leader>{ gEwi{<esc>ea}<esc>B
:vn <leader>{ "1c{<esc>"1pa}<esc>B

:no <leader><leader>} gEwi{<esc>Ea}<esc>B
:no <leader>} gEwi{<esc>ea}<esc>B
:vn <leader>} "1c{<esc>"1pa}<esc>B

" example.com => example.com
:no <leader><leader>[ gEwi[<esc>Ea]<esc>B
:no <leader>[ gEwi[<esc>ea]<esc>B
:vn <leader>[ "1c[<esc>"1pa]<esc>B

:no <leader><leader>] gEwi[<esc>Ea]<esc>B
:no <leader>] gEwi[<esc>ea]<esc>B
:vn <leader>] "1c[<esc>"1pa]<esc>B

" 3+3 => #{3+3}
" user.name => #{user.name}
" user_name => #{user_name}
:no <leader><leader># gEwi#{<esc>Ea}<esc>B
:no <leader># gEwi#{<esc>ea}<esc>B
" 3 + 3 => #{3 + 3}
:vn <leader># "1c#{<esc>"1pa}<esc>B

" example.com => (example.com)
:no <leader><leader>( gEwi(<esc>Ea)<esc>B
:no <leader>( gEwi(<esc>ea)<esc>B
:vn <leader>( "1c(<esc>"1pa)<esc>B

:no <leader><leader>) gEwi(<esc>Ea)<esc>B
:no <leader>) gEwi(<esc>ea)<esc>B
:vn <leader>) "1c(<esc>"1pa)<esc>B

" example.com => <example.com>
:no <leader><leader>< gEwi<<esc>Ea><esc>B
:no <leader>< gEwi<<esc>ea><esc>B
:vn <leader>< "1c<<esc>"1pa><esc>B

:no <leader><leader>> gEwi<<esc>Ea><esc>B
:no <leader>> gEwi<<esc>ea><esc>B
:vn <leader>> "1c<<esc>"1pa><esc>B


