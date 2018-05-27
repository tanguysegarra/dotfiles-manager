# How I manage my dotfiles

Easy way to keep your dotfiles up-to-date on your personal git, without using silly sym-links!

Dependencies : i3, i3-status, i3lock, i3-gaps (I personally use anarchy-linux packages)

## Setup

Initialize an empty git repository at your home directory with

```
$ cd ~
$ git init
$ git remote add origin https://github.com/tanguysegarra/dotfiles.git
```

Create a gitignore file along the .git folder with

```
$ echo '*' > .gitignore
```

This tells to git to ignore all the files in the repository's directory.
Now let's create a bash script to add files to your git using --force and edit it with

```
$ touch gpdots.sh
$ vim gpdots.sh
```

Edit it according to your needs, for me it will be 

```
#!/bin/bash
arr=('.config/i3/config' 'connected.jpg' '.gitignore'
     'gpdots.sh' '.i3block.conf' 'README.md'
     'setup.sh' '.vimrc' '.zshrc')

for i in "${arr[@]}";
do
    git add -f $i
done

git commit -m 'Updated dotfiles and wallpaper'
git push origin master
```

Make your script executable with

```
$ chmod +x gpdots.sh
```

Then push to your git with

```
./gpdots.sh
```

## On a new machine (or on yours)

If you want to use my dotfiles properly, I wrote a script for you! 

```
$ cd ~
$ git clone https://github.com/tanguysegarra/dotfiles.git
$ cd dotfiles
$ ./setup.sh
```

/!\ Beware! This last script removes folders called 'dotfiles' and '.git' at your home. You're warned, no crying afterwards.

## Built With

* Bash Script Language
* Git

## Authors

* **SEGARRA Tanguy** - *Initial work* - [Tanguy](https://github.com/tanguysegarra/)

## Acknowledgments

* Feel free to use it, and to tell your friends how easy it is!
* Be careful : don't push private keys or data on a public github repository!
* Don't hesitate to ask, or create issues, if you have any trouble setting this up.
