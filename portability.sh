!#/usr/bin/env bash

set -x
# prints commands while it runs
# to turn off set +x

[[ ! $BASH_VERSIONINFO -ge 4 ]] && echo "You will need to update to 4+"

[[ ! -a $(which nmap) ]] && echo "NO nnmap" 


[[ -a $(which az) ]] && echo "You have az" && exit

echo "--"