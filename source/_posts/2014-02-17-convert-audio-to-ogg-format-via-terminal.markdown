---
layout: post
title: "convert audio to ogg format via terminal"
date: 2014-02-17 07:53:31 +1100
comments: true
categories: hacking
author: Danijel-James Wynyard
published: true
---
Ogg is a container format. It typically uses the [Vorbis audio codec](http://www.vorbis.com). You can download a static build of [ffmpeg](http://ffmpegmac.net/) and use the bundled libvorbis encoder:

    ffmpeg -i input.wav -c:a libvorbis -qscale:a 5 output.ogg

According to the Vorbis encoding guide, the quality range is from 0–10, where 10 is the highest quality and 3–6 are a good range to try. In the above example we used 5 as quality.

_Source: http://apple.stackexchange.com/a/121099/49601_

🍇🍇🍇

`#MigratedPost`

