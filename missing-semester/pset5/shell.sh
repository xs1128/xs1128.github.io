#!/bin/bash

# Write a bash function called pidwait that takes a pid 
# and waits until the given process completes. 
# You should use sleep to avoid wasting CPU unnecessarily.

pidwait() {
    while kill -0 "$1" 2>/dev/null
    do
    sleep 1
    done
    ls
}
