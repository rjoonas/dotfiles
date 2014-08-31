#!/bin/bash

repodir=~/dotfiles # Local path to this dotfiles repo
vimtmp=~/.vim/tmp

failure() {
  echo -e "\x1B[0;31m ✕\x1B[0m ($1)"
}

success() {
  echo -e "\x1B[0;32m ✓\x1B[0m"
}

# Create a directory for vim's temp files.
printf "Creating a directory for vim backups: $vimtmp"
mkdir -p $vimtmp
success

vimrctarget=~/.vimrc
printf "Creating .vimrc symlink"
if [ -f $vimtarget ]; then
  failure "~/.vimrc already exists"
else
  ln -s $repodir/.vimrc $vimrctarget 
  success
fi
