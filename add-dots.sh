#!/bin/bash

#   Manage Your Dotfiles
#   ----------------------

# feel free to change what files you track in the following array

tocommit=(
	'/home/tanguy/.config/i3/config'
	'home/tanguy/.Xdefaults'
	'/home/tanguy/.config/kitty/kitty.conf'
	'/home/tanguy/Pictures/wp.jpg'
	'/home/tanguy/Pictures/blackhole.jpg'
	'/home/tanguy/.oh-my-zsh/themes/my.zsh-theme'
	'/home/tanguy/dotfiles-manager/add-dots.sh'
	'/home/tanguy/dotfiles-manager/README.md'
	'/home/tanguy/dotfiles-manager/install-dots.sh'
	'/home/tanguy/dotfiles-manager/LICENSE'
	'/home/tanguy/.vimrc'
	'/home/tanguy/.zshrc'
	'/home/tanguy/lock.sh'
)

for i in "${tocommit[@]}";
do
    git add -f $i
done

git commit -m 'Updated dotfiles'
git push origin master

