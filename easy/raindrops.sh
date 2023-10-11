#!/bin/zsh

check_divisibility() {
  if [ "$1" -eq 0 ]; then
    echo "Ingrese un numero que sea mayor a cero"
    exit 1
  else
    return 0 
  fi
}

check_divisibility $1

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
