#!/bin/bash

#Extend the Prime Factorization Program to store all the Prime Factors of a number n into an array and finally display the output.

read -p "Enter your number: " num

for(( i=2 ; i<= $num/2 ; i++ ))
do
         if(( $num%$i = 0  ))
         then
              #echo $i
              prime_factor[i]=$i
         fi
done
echo ${prime_factor[@]}
