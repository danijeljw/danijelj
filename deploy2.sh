#!/usr/bin/env bash

echo "Recursively delete .DS_Store files"
find . -type f -name '*.DS_Store' -ls -delete

## Replace author name in posts
echo "Replacing author name"
for i in source/_posts/*.markdown; do
    sed -i 's/Danijel James/Danijel-James Wynyard/' "$i"
done

rake generate
git add -A -f *
