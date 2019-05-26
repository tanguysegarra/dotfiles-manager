#!/bin/bash

# Work in progress - dont use this

#   Install dotfiles on your machine
#   --------------------------------

cd ~
rm -rf dotfiles .git
rm -f ~/.config/i3/config
git clone https://github.com/tanguysegarra/dotfiles-manager.git
files=(~/dotfiles-manager/$'.'*)
files+=(~/dotfiles-manager/*)
unset files[0] # .
unset files[1] # ..
unset files[2] # .config /too hard to manage
for f in ${files[@]};
do
    mv -f "$f" .
done
mv ~/dotfiles-manager/.config/i3/config ~/.config/i3/config
cd ~
i3-msg restart

