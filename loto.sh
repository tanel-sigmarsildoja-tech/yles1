#!/bin/bash
#lottery

#teeme ajutise
tempor=$(mktemp)
lotto="lotonumbers.txt"
while (( $(wc -l < "$tempor") < 5 )); do
nr=$(( RANDOM % 50 + 1 ))
#check for dupes
if ! grep -qx "$nr" "$tempor"; then
echo "$nr" >> "$tempor"
fi
done
numberss=$(tr '\n ' ' ' < "$tempor")
rm -f "$tempor"
#dateeeeee
td=$(date "+%Y-%m-%d %H:%M:%S")
res="$td - Numbers are: $numberss"

echo "Choose:"
echo "1 Terminal"
echo "2 In file ($lotto)"
read -p "Choose 1 or 2" choic

if [[ "$choic" == "1" ]]; then
echo "$res"
elif [[ "$choic" == "2" ]]; then
echo "$res" >> "$lotto"
echo "It is in a file"
else
echo "Mistake. Here are still your results: "
echo "$res"
fi

