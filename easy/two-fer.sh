#!/bin/zsh

NAME=$1

if [ -z "$NAME" ]
  then
    echo "One for you, one for me."
  else
    echo "One for $NAME, one for me."
fi

exit 0
