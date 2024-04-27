#!/bin/bash


for ((numbers=0;numbers<=99;numbers++)); do
  
  touch "$numbers"
done

for file in *; do
  
  
  
  digits=""
  sum=0

  
  for (( i=0; i<${#file}; i++ )); do
    char="${file:i:1}"
    if [[ $char =~ ^[0-9]+$ ]]; then
      digits+="$char"
    fi
  done

  for (( i=0; i<${#digits}; i++ )); do
    digit="${digits:i:1}"
    sum=$((sum + ((digit)) ))
  done

  
  if [[ $sum -eq 15 ]]; then
    echo "Deleting file $file (sum is 15)"
    rm -r "$file"
  fi
done


echo "completed =)"
