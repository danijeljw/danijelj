---
layout: post
title: "flush dns in mac os x"
date: 2014-02-23 07:41:24 +1100
comments: true
categories: hacking
author: Danijel-James Wynyard
published: true
---
###10.11
    sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder; say DNS cache flushed

###10.10
    sudo discoveryutil mdnsflushcache;sudo discovertyutil udnsflushcaches

###10.9
    dscacheutil -flushcache;sudo killall -HUP mDNSResponder

###10.8
    sudo killall -HUP mDNSResponder

###10.7
    sudo killall -HUP mDNSResponder

###10.6
    dscacheutil -flushcache

###10.5
    dscacheutil -flushcache

###10.4
    lookupd -flushcache

🍖🍖🍖

`#MigratedPost`
