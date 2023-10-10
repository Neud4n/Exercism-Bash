#!/bin/zsh

check_divisibility() {
  if [ "$1" -eq 0 ]; then
    return 0
  else
    return 1
  fi
}

number=$1

if [ $((number % 3)) -eq 0 ]; then
  output="Pling"
fi

if [ $((number % 5)) -eq 0 ]; then
  output="${output}Plang"
fi

if [ $((number % 7)) -eq 0 ]; then
  output="${output}Plong"
fi

if [ -z "$output" ]; then
  output=$number
fi

echo "$output"

exit 0
