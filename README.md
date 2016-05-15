# neovim-distribution
Neovim distribution with some stuff borrowed from SFP-13 and many other .vimrc files around the net.

# Installation

- git clone https://github.com/bigchirv/neovim-distribution.git ~/.config/nvim
- nvim +q
- nvim +PlugInstall +qa

# Default plugins list

For a complete list of the plugins I'm currently using, please check the ```config/plug.vim``` file.

# Customization

- ```config/custom.plugin.vim``` for custom plugins
- ```config/custom.init.vim``` for custom settings, and custom plugins configuration


# About the colorscheme

The default colorscheme is a mix between SPF-13's solarized and
railscast.

As you can see, I didn't add the myriad of colorschemes available
elsewehere. The reason for this is, since the colorscheme is
more of a personal choice, I thought it will be better for every
user to install the one they like the most.

You can see the implementation of the current color scheme in
config/colors.vim.

