---
layout: post
title: "securely erase SSD MacBook Air"
date: 2015-12-21 09:27:23 +1100
comments: true
categories: hacking
author: Danijel James
published: true
---
Using DBAN or other tools will not work as they're built for non EFI-based machines. They will also unecessarily write to your SSD and the data may still be recoverabe.

Boot MacBook Air from a [Recovery USB](https://support.apple.com/kb/dl1433).

Launch Terminal from `Utilities` menu.

Find list of hard drives by running `diskutil list`

    | => diskutil list
    /dev/disk0
       #:                       TYPE NAME                    SIZE       IDENTIFIER
       0:      GUID_partition_scheme                        *121.3 GB   disk0
       1:                        EFI EFI                     209.7 MB   disk0s1
       2:                  Apple_HFS Macintosh HD            120.3 GB   disk0s2
       3:                 Apple_Boot Recovery HD             650.0 MB   disk0s3

Erase with US DoE 3-pass secure erase:

    diskutil secureErase 4 /dev/disk0

`#MigratedPost`

