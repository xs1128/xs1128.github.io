#! /bin/zsh

zipper() {
    find . -type f -name "*.html" -print0 | xargs -0 zip zipper.zip
}
