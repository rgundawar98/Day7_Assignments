#!/bin/bash -x

echo "Enter a number to find prime factors"
read num

for(( i=2; i<=num; i++))
do
    if(($num%i==0))
    then
        count=0
        for(( j=1; j<=$i; j++))
        do
            if(($i%j==0))
            then
                  ((count++))
            fi
         done
         if(($count==2))
         then
              echo $a
              num=$(($num/$i))
         fi
      fi
done
echo ${num[@]}
