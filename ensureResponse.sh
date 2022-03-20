!#/usr/bin/env bash

read -ep "Favourite color? " -i "Blue" favColor
echo $favColor


# bash ensureResponse.sh q w e
if (($#<3)); then
    echo "This command requires three arguments:"
    echo "Username, userid, and favourite number"
else 
    # the program goes here
    echo "username:$1"
    echo "userid:$2"
    echo "favourite number:$3"
fi

read -p "favourite animal? " fav
while  [[ -z $fav ]]
do 
    read -p "I need an answer! " fav
done
echo "$fav was selected."

read -p "favourite animal? [cat]" fav
while  [[ -z $fav ]]
do 
    fav="cat"
done
echo "$fav was selected."

read -p "What year? [nnnn] " year
until [[ $year =~ [0-9]{4} ]]; do
    read -p "A year, please [nnnn] " year
done 
echo "Selected year: $year"