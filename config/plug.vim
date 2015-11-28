Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Code completion, snippets engines
function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.sh --clang-completer
  endif
endfunction
Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'

" Javascript
Plug 'marijnh/tern_for_vim', { 'do': 'npm install', 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'isRuslan/vim-es6', { 'for': 'javascript' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }

" CoffeeScript
"function! InstallCoffeeTags(info)
  "if a:info.status == 'installed' || a:info.force
    "!gem install CoffeeTags
  "endif
"endfunction
"Plug 'lukaszkorecki/CoffeeTags', { 'do': function('InstallCoffeeTags') }
Plug 'kchmck/vim-coffee-script'

" CSS/SCSS/Stylus
Plug 'hail2u/vim-css3-syntax'
Plug 'JulesWang/css.vim'
Plug 'skammer/vim-css-color'
Plug 'wavded/vim-stylus', { 'for': 'stylus' }

" Jade
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
"
" Docker
Plug 'ekalinin/Dockerfile.vim', { 'for': 'docker' }

" Markdown
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'nelstrom/vim-markdown-folding', {'for': 'markdown'}

" UI
Plug 'airblade/vim-gitgutter'
Plug 'bling/vim-airline'
Plug 'Yggdroot/indentLine'

" Other IDE-like functions
Plug 'editorconfig/editorconfig-vim.git'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'wesQ3/vim-windowswap'
Plug 'junegunn/vim-easy-align'
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'ktonga/vim-follow-my-lead'
Plug 'majutsushi/tagbar'
Plug 'terryma/vim-multiple-cursors'
Plug 'edsono/vim-matchit'
Plug 'luochen1990/rainbow'
Plug 'Townk/vim-autoclose'
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
