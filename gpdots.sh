#!/bin/bash
git add -f .gitignore
git add -f .zshrc
git add -f .vimrc
git add -f .i3block.conf
git add -f .config/i3/config
git add -f Pictures/dedsec.gif
git add -f README.md
git add -f gpdots.sh
git commit -m 'added dotfiles and wallpaper'
git push origin master
