# dotfiles-management

Easy way to keep your dotfiles up-to-date on your personal git, without using silly sym-links!

Dependencies : i3, i3-status, epi3lock, i3-gaps (anarchy-linux packages)

## Setup

Initialize an empty git repository at your home directory with

```
$ cd ~
$ git init
$ git remote add origin https://github.com/<username>/<repo-name>.git
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
declare -a arr=('.gitignore' '.bashrc' '.zshrc'
                '.vimrc' '.i3block.conf' '.config/i3/config'
                 'README.md' 'gpdots.sh')
for i in "${arr[@]}"
do
  git add -f $i
done
git commit -m 'added dotfiles and wallpaper'
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

## On a new machine

```
$ cd ~
$ git clone https://github.com/<your-username>/<repo-name>.git
```

## Built With

* Bash Language
* Git

## Authors

* **SEGARRA Tanguy** - *Initial work* - [Tanguy](https://github.com/tanguysegarra/)

## Acknowledgments

* Feel free to use it, and to tell your friends how easy it is!
* Be careful : don't push private keys or data on a public github repository!
* Don't hesitate to ask, or create issues, if you have any trouble setting this up.
