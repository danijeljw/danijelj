#!/bin/bash
rake generate
rake deploy
git add -A -f *
git commit -m 'repaired posts'
git push origin master
echo ''
echo 'Posts repaired!'
echo ''

