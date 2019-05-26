#!/bin/bash

#   Manage Your Dotfiles
#   ----------------------

# feel free to change what files you track in the following array
# cd ~
cp ~/add-dots.sh Documents/prog/dotfiles-manager/add-dots.sh
tocommit=(
	'.config/i3/config'
	'.Xdefaults'
	'.config/kitty/kitty.conf'
	'Pictures/blackhole.jpg'
	'.oh-my-zsh/themes/my.zsh-theme'
	'Documents/prog/dotfiles-manager/add-dots.sh'
	'Documents/prog/dotfiles-manager/README.md'
	'Documents/prog/dotfiles-manager/install-dots.sh'
	'Documents/prog/dotfiles-manager/LICENSE'
	'.vimrc'
	'.zshrc'
	'lock.sh'
)

for i in "${tocommit[@]}";
do
    git add -f $i
done

git commit -m 'Updated dotfiles'
git push origin master

