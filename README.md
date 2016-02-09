# neovim-distribution
Neovim distribution with some stuff borrowed from SFP-13 and many other .vimrc files around the net.

# Installation

- git clone https://github.com/bigchirv/neovim-distribution.git .config/nvim
- nvim +q
- nvim +PlugInstall +qa

# Default plugins list

Here's a quick list of the plugins I've been using in this distribution:

## Package management
- junegunn/vim-plug

## Code completion, snippets engines
- Valloric/YouCompleteMe
- SirVer/ultisnips
- honza/vim-snippets
- mattn/emmet-vim

## Javascript
- marijnh/tern_for_vim
- pangloss/vim-javascript
- mxw/vim-jsx
- isRuslan/vim-es6
- othree/yajs.vim
- grvcoelho/vim-javascript-snippets

## CoffeeScript
- kchmck/vim-coffee-script

## CSS/SCSS/Stylus
- hail2u/vim-css3-syntax
- JulesWang/css.vim
- skammer/vim-css-color
- wavded/vim-stylus

## Jade
- digitaltoad/vim-jade

## Docker
- ekalinin/Dockerfile.vim

## Markdown
- plasticboy/vim-markdown
- nelstrom/vim-markdown-folding

## UI
- airblade/vim-gitgutter
- bling/vim-airline
- Yggdroot/indentLine

## Other IDE-like functions
- junegunn/fzf
- editorconfig/editorconfig-vim.git
- scrooloose/nerdcommenter
- scrooloose/nerdtree
- scrooloose/syntastic
- wesQ3/vim-windowswap
- junegunn/vim-easy-align
- kien/ctrlp.vim
- tacahiroy/ctrlp-funky
- ktonga/vim-follow-my-lead
- majutsushi/tagbar
- terryma/vim-multiple-cursors
- edsono/vim-matchit
- luochen1990/rainbow
- Townk/vim-autoclose
- tpope/vim-git
- tpope/vim-fugitive
- tpope/vim-surround

# About the colorscheme

The default colorscheme is a mix between SPF-13's solarized and
railscast.

As you can see, I didn't add the myriad of colorschemes available
elsewehere. The reason for this is, since the colorscheme is
more of a personal choice, I thought it will be better for every
user to install the one they like the most.

You can see the implementation of the current color scheme in
config/colors.vim.

