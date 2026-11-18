#!/bin/bash
#quadratic

if [ "$#" -ne 3 ]; then
echo "Enter 3 variables please"
exit 1
fi

A=$1
B=$2
C=$3
#zerocheck
if [ "$(echo "$A == 0" | bc -l)" -eq 1 ]; then
echo "First one 0 does not make a quadratic equation!"
exit 1
fi
#lets make something that can calculate a propewr one
D=$(echo "($B)^2 - 4 * ($A) * ($C) | bc -l)
if [ "$(echo "$D < 0" | bc -l)" -eq 1]; then
echo "No real number solutions"
elif [ "$(echo "$D == 0 | bc -l)" -eq 1 ]; then
x=$(echo "-($B) / (2 * ($A))" | bc -l)
printf "x = %.5f\n" "$x"
else
x1=$(echo "(-($B + sqrt($D)) / (2 * ($A))" | bc -l)
x2=$(echo "(-($B) - sqrt($D)) / (2 * ($A))" | bc -l)
printf "x1 = %.5f and x2 = %.5f\n" "$x1" "$x2"
fi
#mina üles ei leia mis häda sellel on seal rida 21ga, annan alla ja edasi ei paranda
