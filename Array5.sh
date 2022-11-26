#!/bin/bash -x

Arr=(1)

for ((Arr=1;Arr<=100;Arr++))
do
   if ((Arr%11==0))
   then
       echo $Arr
       Array["$Arr"]=$Arr
   fi
done
echo ${Array[@]}

