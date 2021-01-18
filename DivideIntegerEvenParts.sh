/*
This function divide an integer into a number of even parts, which return a result array. 
The sum integers in this result array produce the original number.

For example, given number = 10 and parts = 2 return an array of integers with length equal to parts: [5 , 5].
*/


#!/bin/bash

num=$1
parts=$2

mod=$(expr $num % $parts)

if [ $mod == "0" ]; then
    val=$((num/parts))
    for (( c=1; c<=parts; c++ ))
    do
    echo $val
    done
else
   while [ $mod == "0" ]
   do
     num=$num+1
     mod=$(expr $num % $parts)
   done
    val=$((num/parts))  
    for (( c=1; c<=parts-mod; c++ ))        
      do
      echo $val
    done
    for (( c=1; c<=mod; c++ ))
      do
      valor2=$((val+1))
      echo $valor2
    done
fi
