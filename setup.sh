#!/bin/bash

#   Setup Your New Machine
#   ----------------------

cd ~
rm -rf dotfiles .git
rm -f ~/.config/i3/config
git clone https://github.com/tanguysegarra/dotfiles.git
files=(~/dotfiles/$'.'*)
files+=(~/dotfiles/*)
unset files[0] # .
unset files[1] # ..
unset files[2] # .config /too hard to manage
for f in ${files[@]};
do
    mv -f "$f" .
done
mv ~/dotfiles/.config/i3/config ~/.config/i3/
rm -rf ~/dotfiles
i3-msg restart

