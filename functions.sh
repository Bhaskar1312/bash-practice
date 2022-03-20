!#/usr/bin/env bash

set -e

greet() {
    echo "greet"
}

greetings() {
    echo "greetings from $1 $2"
}

looping() {
    echo "$FUNCNAME"
    echo "length: $#"
    declare -i f=1
    for i in $@; do
        echo -n "$i "
        echo "index:$f"
        (( f+=1 ))
    done
}

echo "Now function call"
greet
greetings Bhaskar
greetings Bhaskar B
looping Bhaskar banana loop 1 2 3

var1="12"
globalvars() {
    var2="13"
    local var3=var1
}
globalvars
echo $var1 $var2 $var3