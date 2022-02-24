#!/bin/bash

# Write a program in the following steps
# a. Generates 10 Random 3 Digit number.
# b. Store this random numbers into a array.
# c. Then find the 2nd largest and the 2nd smallest element without sorting the array.

for((i=0; i<10; i++))
do
      random=$((RANDOM%999+100))
      random_num[$i]=$random
done
      echo "array is:" ${random_num[@]}

min=${random_num[0]}
max=${random_num[0]}
min2='unset'
max2='unset'

for i in "${random_num[@]}"
do
      if(($i < $min))
      then
          min2=$min
          min=$i
      fi

      if(($i > $max))
      then
          max2=$max
          max=$i
      fi
done

echo "2nd smallest is " $min2
echo "2nd lagest is " $max2
