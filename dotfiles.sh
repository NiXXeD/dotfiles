#!/bin/bash

files=".gitconfig .gtkrc-2.0"    # list of files/folders to symlink in homedir

dir=~/.dotfiles                  # dotfiles directory
olddir=~/.dotfiles/old           # old dotfiles backup directory

mkdir -p $olddir
cd $dir
for file in $files; do
    echo "Backing up $file to $olddir"
    mv ~/$file $olddir
    echo "Creating symlink to $file in ~"
    ln -s $dir/$file ~/$file
done