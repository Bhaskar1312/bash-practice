!#/usr/bin/env bash

# animal="dog"
# animal="puppy"
# animal="cat"
animal="a"
case $animal in 
    cat) echo "Feline";;
    dog|puppy) echo "Canine";;
    *) echo "No Match!"
esac