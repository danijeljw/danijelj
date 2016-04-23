---
layout: post
title: "generate checksums"
date: 2016-04-23 21:56:38 +0930
comments: true
categories: hacking
author: Danijel-James Wynyard
published: true
---
###Bash
Calculate MD5 checksum:
```bash
md5 /tmp/1.iso
```
Calculate SHA-1 checksum:
```bash
shasum -a 1 /tmp/1.iso
```
Calculate SHA-256 checksum:
```bash
shasum -a 256 /tmp/1.iso
```
