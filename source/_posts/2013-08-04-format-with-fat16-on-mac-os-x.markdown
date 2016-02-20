---
layout: post
title: "format with fat16 on mac os x"
date: 2014-08-04 08:11:15 +1100
comments: true
categories: hacking
---
Using the following formats a partition with `fat16` on OS X:

    diskutil partitionDisk /Volumes/NDS 1 MBRFormat "MS-DOS FAT16" "NDS" 1000M

That is:

- /Volumes/NDS: the mount point to partition, could also be /dev/disk1
- 1: the number of partitions
- MBRFormat: the partition format, MBR is the usual default for removable storage
- "MS-DOS FAT16": partition type
- "NDS": partition name
- 1000M: 1000 megabytes (size of the partition, if it is the last, it will span to the end of the drive)

🍷🍷🍷

`#MigratedPost`