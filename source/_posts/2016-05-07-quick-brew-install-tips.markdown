---
layout: post
title: "quick brew install tips"
date: 2016-05-07 23:42:06 +0930
comments: true
categories: hacking
author: Danijel-James Wynyard
published: true
---
Sometimes I need to remind myself how to install a list of apps in [brew](http://brew.sh) from a textfile named `file.txt`

```bash
sed -i '/^\s*$/d'
# in place remove blank lines

cat file.txt | while read in; do brew install "$in"; done
# read each line in 'file.txt' to brew to install

xargs -0 brew install  < <(tr \\n \\0 <file.txt)
# brew install each line from file.txt
```