---
layout: post
title: "convert mp4 to webm with ffmpeg"
date: 2016-05-08 01:09:08 +0930
comments: true
categories: hacking
author: Danijel-James Wynyard
published: true
---
Convert from MP4 to WebM standard:

```bash
avconv -i inputVideo.mp4 -acodec libvorbis -aq 5 -ac 2 -qmax 25 -threads 2 outputVideo.webm
```
