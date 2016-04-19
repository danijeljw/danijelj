#!/usr/bin/env bash

## Auto Delete Key Steps
todayDate="$(date +'%d')"
if [ $todayDate -lt 19 ]; then
	echo "key.txt will be removed from source today"
	sleep 2
	echo "Removing source/key.txt"
	git rm source/key.txt
	sleep .5
	echo "U2FsdGVkX18gYOtcDP6leOUaAQiGLA1NDdToWGffCZI=" | openssl enc -aes-256-cbc -d -a
	echo "Updating git repo with changes"
	sleep .5
	git commit -a -S -m 'remove source/key.txt file as promised'
	git push -U origin master
	echo "key.txt removed as promsed ;-)"
	sleep .5
	echo "...continuing..."
else
	echo "Haven't removed source/key.txt yet"
	sleep .5
	echo "...continuing..."
fi

## Delete all the .DS Store files
echo "Recursively delete .DS_Store files"
find . -type f -name '*.DS_Store' -ls -delete

rake generate
echo "U2FsdGVkX18gYOtcDP6leOUaAQiGLA1NDdToWGffCZI=" | openssl enc -aes-256-cbc -d -a
git add -A -f *
git commit -a -S -m 'auto update signed'
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

## Removing key.txt removal script
if [ ! -f source/key.txt ]; then
	sed -i -e '3,23d;57,61d' update.sh
fi
