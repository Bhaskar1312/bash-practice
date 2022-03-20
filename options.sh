!#/usr/bin/env bash

# putting a colon after each of these options, means script expects these options
# while getopts u:p: option; do
#     case $option in 
#         u) user=$OPTARG;;
#         p) pass=$OPTARG;;
#     esac
# done
# echo "user: $user / pass: $pass"

# bash options.sh -u Bhaskar -p  passow
# bash options.sh -p  passow -u Bhaskar

# while getopts u:p:ab option; do
#     case $option in 
#         u) user=$OPTARG;;
#         p) pass=$OPTARG;;
#         a) echo "got the A flag";;
#         b) echo "got the B flag";;
#     esac
# done
# echo "user: $user / pass: $pass"

# bash options.sh -u Bhaskar -p  passow -a -b
# bash options.sh -p  passow -u Bhaskar

# I want to know about any other flags not specified, use ? to know them
while getopts :u:p:ab option; do
    case $option in 
        u) user=$OPTARG;;
        p) pass=$OPTARG;;
        a) echo "got the A flag";;
        b) echo "got the B flag";;
        ?) echo "I didn't know this flag";;
    esac
done
echo "user: $user / pass: $pass"