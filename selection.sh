!#/usr/bin/env bash

echo "Which animal?"
select animal in "cat" "dog" "rabbit" 
do 
    echo "You selected: $animal"
    break
done

echo "Which animal?"
select animal in "cat" "dog" "quit" 
do 
    case $animal in 
        cat) echo "Cats like to sleep.";;
        dog) echo "Dogs like to play catch";;
        quit) break;;
        *) echo "I am not sure what it is?"
    esac
done