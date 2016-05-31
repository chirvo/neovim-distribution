Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Code completion, snippets engines
function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.status == 'updated' || a:info.force
    !./install.py --clang-completer --tern-completer
  endif
endfunction

Plug 'Valloric/YouCompleteMe', { 'do': function('BuildYCM') }
Plug 'ervandew/supertab'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'mattn/emmet-vim'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'

" Javascript
Plug 'jelera/vim-javascript-syntax', { 'for': 'javascript' }
Plug 'pangloss/vim-javascript', { 'for': 'javascript' }
Plug 'grvcoelho/vim-javascript-snippets', { 'for': 'javascript' }
Plug 'isRuslan/vim-es6', { 'for': 'javascript' }
Plug 'mxw/vim-jsx', { 'for': 'javascript' }
Plug 'othree/yajs.vim', { 'for': 'javascript' }
Plug 'ternjs/tern_for_vim', { 'do': 'npm install', 'for': 'javascript' }

" JSON
Plug 'elzr/vim-json', { 'for': 'json' }

" CoffeeScript
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' }

" CSS/SCSS/Stylus
Plug 'hail2u/vim-css3-syntax', { 'for': 'css' }
Plug 'JulesWang/css.vim', { 'for': 'css' }
Plug 'skammer/vim-css-color', { 'for': 'css' }
Plug 'wavded/vim-stylus', { 'for': 'stylus' }

" Jade
Plug 'digitaltoad/vim-jade', { 'for': 'jade' }
"
" Docker
Plug 'ekalinin/Dockerfile.vim', { 'for': 'docker' }

" Markdown
Plug 'plasticboy/vim-markdown', {'for': 'markdown'}
Plug 'nelstrom/vim-markdown-folding', {'for': 'markdown'}

" UI and IDE-like plugins
Plug 'airblade/vim-gitgutter'
Plug 'editorconfig/editorconfig-vim'
Plug 'edsono/vim-matchit'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/vim-easy-align'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'ktonga/vim-follow-my-lead'
Plug 'lfilho/cosco.vim'
Plug 'luochen1990/rainbow'
Plug 'majutsushi/tagbar'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'tacahiroy/ctrlp-funky'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-git'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline'
Plug 'wesQ3/vim-windowswap'
Plug 'Yggdroot/indentLine'
