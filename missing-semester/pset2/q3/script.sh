#!/usr/bin/env bash

i=0
stdout_file="stdout.log"
stderr_file="stderr.log"

> "$stdout_file"
> "$stderr_file"

while true; do

    (( i++ ))

    ./run.sh >> "$stdout_file" 2>> "$stderr_file"
    exit_code=$?

    if [[ $exit_code -ne 0 ]]; then
        break
    fi
done

echo "Script failed after $i runs."
echo "Standard Output: "
cat "$stdout_file"
echo "Standard Error: "
cat "$stderr_file"

