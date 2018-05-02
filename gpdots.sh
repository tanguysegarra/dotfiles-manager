#!/bin/bash

#   Git Push Your Dotfiles
#   ----------------------

# feel free to change what files you track in the following array

arr=('.config/i3/config' 'connected.jpg' '.gitignore'
     'gpdots.sh' '.i3block.conf' 'README.md'
     'setup.sh' '.vimrc' '.zshrc')

for i in "${arr[@]}";
do
    git add -f $i
done

git commit -m 'Updated dotfiles and wallpaper'
git push origin master

