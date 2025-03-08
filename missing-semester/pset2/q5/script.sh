#! /bin/zsh

script() {
    find . -type f -exec stat -f "%m%t%Sm %N" {} + | sort -rn | head -1 | cut -f2-
}
