#!/bin/sh
vimrc_path=~/.config/nvim/
test -d "$vimrc_path" || mkdir -p "$vimrc_path" && \
cp -r init.vim $vimrc_path && \
cp -R colors $vimrc_path
curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
