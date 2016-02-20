#!/bin/bash
git push origin master
rake generate
rake deploy
rake notify
echo "Pushed and Published!"

