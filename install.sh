#!/bin/bash

SRC=`basename $0`
SRCDIR="$HOME/dotfiles"

if [ ! -d "$SRCDIR" ] ; then
  echo "$HOME/dotfiles does not exist. Exiting"
fi

cd $SRCDIR
git submodules init
git submodules update

for FILE in `find "$SRCDIR" -type f` ; do
  NAME=`echo "$FILE" | sed -e "s|^$SRCDIR\/||"`
  if [[ "$NAME" != "$SRC" ]] ; then
    echo "Installing: $HOME/$NAME"
    cp -a "$FILE" "$HOME/$NAME"
  fi
done

