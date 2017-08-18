#!/bin/bash

# create symbolic link for config files

# Variables
TIME=$(date "+%Y-%m-%d_%H-%M-%S")
DIR=$(pwd -P)
OLDDIR=~/configfiles_old_"$TIME"
FILES=(tmux.conf zshrc)

# Backup
echo "Create backup on $OLDDIR ~"
mkdir -p "$OLDDIR"
echo "...done"

for FILE in "${FILES[@]}"; do
echo "Copy $FILE from ~ to $OLDDIR"
cp -L ~/.$FILE "$OLDDIR"
echo "...done"
done

# Create symbolic link
for FILE in "${FILES[@]}"; do
echo "Create symbolic link for $FILE"
ln -sf $DIR/.$FILE ~/.$FILE
echo "...done"
done
