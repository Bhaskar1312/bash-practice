#!/usr/bin/env bash

echo "While loop"
declare -i n=0
while (( n < 10 ))
do
    echo "n:$n"
    (( n++ ))
done

echo "Until loop"
declare -i m=0
until ((m == 10 ))
do 
    echo "m:$m"
    (( m++ ))
done

echo "For loop"
for i in 1 2 3 4
do 
    echo $i
done

echo "For loop brace expansion"
for i in {1..100..2}
do 
    echo $i
done

echo "For loop Arithmetic Evaluation"
for (( i=1;  i<=100; i++ ))
do 
    echo $i
done

declare -a fruits=("apple" "banana" "cherry")
for i in ${fruits[@]}
do 
echo "Today's fruit is: $i"
done

for i in $(ls -a); do 
echo "The file is: $i"
done
