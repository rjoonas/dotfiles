Installation
============

``` bash
git clone git://github.com/rjoonas/dotfiles ~/dotfiles
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore-global ~/.gitignore-global
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
mkdir -p ~/.vim/tmp
```

diff-highlight might need to be added to $PATH, eg.

``` bash
ln -s /usr/local/Cellar/git/2.31.1/share/git-core/contrib/diff-highlight/diff-highlight /usr/local/bin/diff-highlight
```
