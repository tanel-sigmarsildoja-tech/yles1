#!/bin/bash

#find numbers where the sum of numbers gives a 7

for (( nr = 1000; nr <= 9999; nr++ )); do
aa=$nr
while (( aa >= 10 )); do
sum=0
while (( a > 0 )); do
(( sum += aa % 10 ))
(( aa /= 10 ))
done
aa=$sum
done
if (( aa == 7 )); then
echo $nr
fi
done
