!#/usr/bin/env bash

set -e

while read f
    do echo "I am reading from file: $f"
done < a.txt