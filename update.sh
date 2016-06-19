#!/usr/bin/env bash


## Delete all the .DS Store files
echo "Recursively delete .DS_Store files"
find . -type f -name '*.DS_Store' -ls -delete

## Replace author name in posts
echo "Replacing author name"
for i in source/_posts/*.markdown; do
    sed -i 's/Danijel James/Danijel-James Wynyard/' "$i"
done

rake generate
echo "U2FsdGVkX1/NlVOZUNBF+OaWizu5z3phGo4kptrBmdE=" | openssl enc -aes-256-cbc -d -a
git add -A -f *
git commit -a -S -m "$*"
wget -q --spider http://google.com
if [ $? -eq 0 ]; then
    rake deploy
    git push origin master
    echo "Signed, deployed and git updated"
    if [ -d "/Volumes/DEVELOPER" ]; then
        ditto -v $HOME/Developer/danijelj.com /Volumes/DEVELOPER/danijelj.com/
        echo "Copied to backup too!"
    fi
else
    if [ -d "/Volumes/DEVELOPER" ]; then
        ditto -v $HOME/Developer/danijelj.com /Volumes/DEVELOPER/danijelj.com/
        echo "Only copied to backup"
    fi
fi
if [ ! -d "/Volumes/DEVELOPER" ]; then
    echo "###################"
    echo "No backups were made at this time"
    echo "###################"
fi

## Reset Date Clause
echo "Resetting $todayDate variable"; todayDate="$(date +'%Y%m%d')"; sleep .5

