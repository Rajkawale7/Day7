#!/bin/bash

#Extend the 1st program problem to sort the array and then find the 2nd largest and the 2nd smallest element.




array=()

for (( i=0; i<10; i++ ))
do
	a=$(( ( RANDOM % 999) + 100 ))
	array[((i))]+=$a
done

	echo "array in ranges are ${array[@]} "

arrays=(`echo ${array[@]} | tr " " "\n" | sort `)

	echo ${arrays[@]}

echo "2nd smallest is ${arrays[1]}"
echo "2nd largest is ${arrays[-2]}"
