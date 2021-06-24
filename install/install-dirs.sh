#!/bin/sh

mkdir -p "$HOME/downloads"
mkdir -p "$HOME/docs"
mkdir -p "$HOME/projects"

mkdir -p "$HOME/media/audio"
mkdir -p "$HOME/media/images/pictures"
mkdir -p "$HOME/media/images/screenshots"
mkdir -p "$HOME/media/images/wallpapers"
mkdir -p "$HOME/media/video"

mkdir -p "$HOME/misc"
ln -sf "$DOTFILES/user-dirs.dirs" "$XDG_CONFIG_HOME/user-dirs.dirs"
