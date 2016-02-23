---
layout: post
title: "generate random passwords"
date: 2014-02-18 07:49:37 +1100
comments: true
categories: hacking
author: Danijel James
published: true
---
Bash script that generates 10-char passwords

    #!/bin/bash
    tmp_pass=0
    if [ $tmp_pass = 0 ]; then
      tmp_pass=`head -c 10 /dev/random | base64`
      echo "${tmp_pass:0:10}" #cut to 10 characters after base64 conversion
    fi

🍦🍦🍦

`#MigratedPost`
