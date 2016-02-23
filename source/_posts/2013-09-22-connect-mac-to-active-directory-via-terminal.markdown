---
layout: post
title: "connect mac to active directory via terminal"
date: 2013-09-22 19:52:21 +1100
comments: true
categories: hacking
author: Danijel James
published: true
---
Connecting Mac OS X to Windows AD via Terminal: 

    dsconfigad –f –a $compName –domain $sub.$domain.$tld –u $ADaccount –p $ADpassword –lu $ladminAcc –lp $ladminPass

    $compName = name of the computer _(in quotations if necessary)_

    $sub    = subdomain
    $domain = domain
    $tld    = tld

    $ADaccount  = AD admin account
    $ADpassword = AD admin password

    $ladminAcc  = Mac local admin account
    $ladminPass = Mac local admin password

`#MigratedPost`
