#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

link_file () {
   echo "Linking file \"$1\""
   ln -s $DIR/$1 $HOME/$1

   return 0
}

for file in .vimrc .screenrc .bash_prompt; do
   link_file $file
done;

