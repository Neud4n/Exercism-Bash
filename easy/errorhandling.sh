# Instructions
# Implement various kinds of error handling and resource management.
# An important point of programming is how to handle errors and close resources even if errors occur.
# This exercise requires you to handle various errors. Because error handling is rather programming language specific you'll have to refer to the tests for your track to see what's exactly required.

# Bash-specific instructions
# The goal of this exercise is to consider the number of arguments passed to your program. If there is exactly one argument, print a greeting message. Otherwise print an error message and exit with a non-zero status.

#!/bin/zsh

E_ARGS=50

main () {

local NAME="$1"

if [ $# -eq 1  ]
  then
    echo "Hello, $NAME"
  else 
    echo "Usage: ${0##*/} <person>" 
    exit $E_ARGS  

fi

}

main "$@"

exit 0
