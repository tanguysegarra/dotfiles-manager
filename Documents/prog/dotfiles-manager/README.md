# How I manage my dotfiles

Easy way to keep your dotfiles up-to-date on your personal git, without using silly sym-links!

Dependencies: i3, i3-status, i3lock, i3-gaps, scrot, imagemagick, compton, oh my zsh.

## Install

Initialize an empty git repository at your home directory with

```
$ cd ~
$ git init
$ git remote add origin https://github.com/YOURNAME/dotfiles-manager.git
```

Create a gitignore file along the .git folder with

```
$ echo '*' > .gitignore
```

This tells to git to ignore all the files in the repository's directory.
Now let's create a bash script to add files to your git using --force. Edit it with

```
$ vim add-dots.sh
```

Edit it according to your needs, for me it will be 

```
#!/bin/bash
cd ~
tocommit=(
	'.config/i3/config'
	'Pictures/wp.jpg'
	'.oh-my-zsh/themes/my.zsh-theme'
	'.gitignore'
    'dotfiles-manager/add-dots.sh'
	'dotfiles-manager/README.md'
    'dotfiles-manager/setup.sh'
	'.vimrc'
	'.zshrc'
	'lock.sh'
)

for i in "${tocommit[@]}";
do
    git add -f $i
done

git commit -m "Updated dotfiles"
git push origin master
```

**You want to make sure all your paths to your config files are correct.**  

Make your script executable with

```
$ chmod +x add-dots.sh
```

Then push to your git with

```
./add-dots.sh
```

## Use these dotfiles on a new machine (or on yours) - WIP 

**This is work-in-progress! Be very careful using this script!**

If you want to use my dotfiles properly, I wrote a script for you! 

```
$ cd ~
$ git clone https://github.com/tanguysegarra/dotfiles-manager.git
$ cd dotfiles-manager
$ ./setup.sh
```

**/!\ Beware!** This last script removes folders called *dotfiles-manager* and *.git* at your home. You're warned, no crying afterwards.

## Built With

* Bash Scripting Language
* Git

## Authors

* **Tanguy SEGARRA** - *Initial work* - [Tanguy](https://github.com/tanguysegarra/)

## Acknowledgments

* Feel free to use it, and to tell your friends how easy it is!
* Be careful : don't push private keys or data on a public github repository!
* Don't hesitate to ask, or create issues, if you have any trouble setting this up.
