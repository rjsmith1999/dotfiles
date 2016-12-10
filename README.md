# dotfiles
Inspired by [github.com/kylef/dotfiles](https://github.com/kylef/dotfiles), among others

## Installation

Cloning the dotfiles:

```shell
$ alias home="git --work-tree=$HOME --git-dir=$HOME/.files.git"
$ home init
$ home remote add origin https://github.com/kylef/dotfiles
$ home fetch
$ home checkout master
```

Installing tools:

```shell
$ make
```
