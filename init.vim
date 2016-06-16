" Install vim-plug if it is not installed
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  execute '!curl --create-dirs -fLo ~/.config/nvim/autoload/plug.vim https://raw.github.com/junegunn/vim-plug/master/plug.vim'
endif

""" Load plugins
call plug#begin('~/.config/nvim/plugged')
" default plugins
runtime config/plug.vim
" custom user plugins
if !empty(glob('~/.config/nvim/config/custom.plug.vim'))
  runtime config/custom.plug.vim
endif
call plug#end()

scriptencoding utf-8
filetype plugin indent on
syntax on

set shell=/bin/bash
set backupdir=~/.config/nvim/backup
set viewdir=~/.config/nvim/view
set directory=~/.config/nvim/swap
set undodir=~/.config/nvim/undo
set mouse=a
set mousehide
set clipboard+=unnamedplus
set shortmess+=filmnrxoOtTI          " Abbrev. of messages (avoids 'hit enter')
set viewoptions=folds,options,cursor,unix,slash " Better Unix / Windows compatibility
set virtualedit=onemore             " Allow for cursor beyond last character
set history=1000                    " Store a ton of history (default is 20)
set nospell                         " Turn off dictionary
set hidden                          " Allow buffer switching without saving
set iskeyword-=.                    " '.' is an end of word designator
set iskeyword-=#                    " '#' is an end of word designator
set iskeyword-=-                    " '-' is an end of word designator
set backup                  " Backups are nice ...
set undofile                " So is persistent undo ...
set undolevels=1000         " Maximum number of changes that can be undone
set undoreload=10000        " Maximum number lines to save for undo on a buffer reload
set tabpagemax=15           " Only show 15 tabs
set showmode                " Display the current mode
set cursorline              " Highlight current line
set backspace=indent,eol,start  " Backspace for dummies
set linespace=0                 " No extra spaces between rows
set number                      " Line numbers on
set showmatch                   " Show matching brackets/parenthesis
set incsearch                   " Find as you type search
set hlsearch                    " Highlight search terms
set winminheight=0              " Windows can be 0 line high
set ignorecase                  " Case insensitive search
set smartcase                   " Case sensitive when uc present
set wildmenu                    " Show list instead of just completing
set wildmode=list:longest,full  " Command <Tab> completion, list matches, then longest common part, then all.
set whichwrap=b,s,h,l,<,>,[,]   " Backspace and cursor keys wrap too
set scrolljump=5                " Lines to scroll when cursor leaves screen
set scrolloff=3                 " Minimum lines to keep above and below cursor
set foldenable                  " Auto fold code
set list
set listchars=tab:›\ ,trail:·,extends:#,nbsp:. " Highlight problematic whitespace
set shiftwidth=2                               " Use indents of 2 spaces
set tabstop=2                                  " An indentation every 2 columns
set softtabstop=2                              " Let backspace delete indent
set noerrorbells visualbell t_vb=              " Disable system bell
set splitright                                 " Open splits at right side
set splitbelow                                 " Open splits below
set foldmethod=marker                          " Uses {{{ and }}} as foldmarkers
set nowrap                      " Do not wrap long lines
set autoindent                  " Indent at the same level of the previous line
set expandtab                   " Tabs are spaces, not tabs
set nojoinspaces                " Prevents inserting two spaces after punctuation on a join (J)
set matchpairs+=<:>             " Match, to be used with %
set pastetoggle=<F12>           " pastetoggle (sane indentation on pastes)
set comments=sl:/*,mb:*,elx:*/  " auto format comment blocks

if has('cmdline_info')
  set ruler                   " Show the ruler
  set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%) " A ruler on steroids
  set showcmd                 " Show partial commands in status line and
  " Selected characters/lines in visual mode
endif

if has('statusline')
  set laststatus=2
  " Broken down into easily includeable segments
  set statusline=%<%f\                     " Filename
  set statusline+=%w%h%m%r                 " Options
  set statusline+=%{fugitive#statusline()} " Git Hotness
  set statusline+=\ [%{&ff}/%Y]            " Filetype
  set statusline+=\ [%{getcwd()}]          " Current dir
  set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
endif

highlight clear SignColumn  " SignColumn should match background
highlight clear LineNr      " Current line number row will have same background color in relative mode
"Fix the vim's awful dictionary highlight on console
highlight clear SpellBad
highlight SpellBad term=standout ctermfg=1 term=underline cterm=underline
highlight clear SpellCap
highlight SpellCap term=underline cterm=underline
highlight clear SpellRare
highlight SpellRare term=underline cterm=underline
highlight clear SpellLocal
highlight SpellLocal term=underline cterm=underline

" default keybindings
runtime config/keybindings.vim
" custom keybindings
if !empty(glob('~/.config/nvim/config/custom.keybindings.vim'))
  runtime config/custom.keybindings.vim
endif
" http://vim.wikia.com/wiki/Restore_cursor_to_file_position_in_previous_editing_session
" Restore cursor to file position in previous editing session
function! ResCur()
  if line("'\"") <= line("$")
    silent! normal! g`"
    return 1
  endif
endfunction
augroup resCur
  autocmd!
  autocmd BufWinEnter * call ResCur()
augroup END

" Remove trailing whitespaces and ^M chars
function! StripTrailingWhitespace()
  " Preparation: save last search, and cursor position.
  let _s=@/
  let l = line(".")
  let c = col(".")
  " do the business:
  %s/\s\+$//e
  " clean up: restore previous search history, and cursor position
  let @/=_s
  call cursor(l, c)
endfunction
autocmd FileType c,cpp,java,go,php,javascript,javascript.jsx,coffee,jade,stylus,css,puppet,python,rust,twig,xml,yml,perl,sql autocmd BufWritePre <buffer> call StripTrailingWhitespace()

" Always switch to the current file directory
autocmd BufEnter * if bufname("") !~ "^\[A-Za-z0-9\]*://" | lcd %:p:h | endif

" Set cursor to the first line when editing a git commit message
autocmd FileType gitcommit au! BufEnter COMMIT_EDITMSG call setpos('.', [0, 1, 1, 0])

" Set a few extra filetypes
autocmd BufNewFile,BufRead,BufReadPost *.coffee set filetype=coffee
autocmd BufNewFile,BufRead,BufReadPost *.jade set filetype=jade
autocmd BufNewFile,BufRead,BufReadPost *.styl set filetype=stylus
autocmd BufNewFile,BufRead,BufReadPost *.jsx set filetype=javascript.jsx

" This ignores camelCase and CamelCase words
" so they are not highlighted as spelling mistakes
autocmd Syntax * syn match CamelCase "\(\<\|_\)\%(\u\l*\)\{2,}\(\>\|_\)\|\<\%(\l\l*\)\%(\u\l*\)\{1,}\>" transparent containedin=.*Comment.*,.*String.*,VimwikiLink contains=@NoSpell contained

" Autoinsert on terminal emulation buffers
autocmd BufEnter,BufWinEnter,WinEnter term://* startinsert
autocmd BufLeave,BufWinLeave,WinLeave term://* stopinsert

" Setting default colors
runtime config/colors.vim

""" Plugins configuration
" load all the available plugins in the plugins/ directory
runtime! config/plugins/*.conf.vim

if !empty(glob('~/.config/nvim/config/custom.init.vim'))
" custom user configuration
  runtime config/custom.init.vim
endif
