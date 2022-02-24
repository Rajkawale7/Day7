#!/bin/bash

#Take a range from 0 – 100, find the digits that are repeated twice like 33, 77, etc and store them in an array

PalindromeNum()
{
        num=$1
        rev=0
        original_num=$1

        while(( $num != 0 ))
        do
        rem=$(( $num%10 ))
        rev=$(( $rev*10 + $rem ))
        num=$(( $num /10))
        done

        if(( $original_num == $rev ))
        then
        #echo $original_num
        repeatedNum[$1]=$1
       fi
}

for (( i=11 ; i<=100; i++ ))
do
        PalindromeNum  $i
done
echo ${repeatedNum[@]}
