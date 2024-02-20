# Installation

```bash
git clone git://github.com/rjoonas/dotfiles ~/dotfiles
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
mkdir ~/.ssh
ln -s ~/dotfiles/.ssh/config ~/.ssh/config
mkdir -p ~/.vim/tmp
```

diff-highlight might need to be added to $PATH, eg.

```bash
ln -s /opt/homebrew/Cellar/git/2.43.2/share/git-core/contrib/diff-highlight/diff-highlight /opt/homebrew/bin/diff-highlight
```

Same for basictex:

```bash
ln -s /usr/local/texlive/2022basic/bin/universal-darwin/* /opt/homebrew/bin/
```
