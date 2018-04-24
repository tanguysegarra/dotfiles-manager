# dotfiles-management

Easy way to keep your dotfiles up-to-date on your personal git, without using silly sym-links!

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
git add -f .gitignore
git add -f .zshrc
git add -f .vimrc
git add -f .i3block.conf
git add -f .config/i3/config
git add -f Pictures/nms.jpg
git add -f README.md
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
$ mv <repo-name>/* <repo-name>/.* .
$ rm -rf <repo-name>
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
