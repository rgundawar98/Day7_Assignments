#!/bin/bash -x

array=()
for((i=0;i<10;i++))
do
   array[i]=$((RANDOM%900+100))
done
   echo ${array[@]}
for ((i=0;i<10;i++))
do
   for ((k=$i+1;k<10;k++))
   do
       temp=0
    if((${array[$i]}>${array[$k]}))
     then
         temp=${array[$i]}
         array[$i]=${array[$k]}
         array[$k]=$temp
     fi
     done
done
echo "The second smallest element is"${array[8]}
echo "The second largest element is"${array[1]}
echo ${array[@]}
