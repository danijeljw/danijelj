---
layout: post
title: "counting fibonacci numbers with python"
date: 2014-03-10 21:17:31 +1100
comments: true
categories: hacking
author: Danijel James
published: true
---
I want a job at <a href="http://www.google.com.au/about/jobs/">Google</a> which means I need to be good at <a href="http://python.org">Python</a>. Got a bit stuck on the 4th module task, to make a counter of the <a href="http://en.wikipedia.org/wiki/Fibonacci_number">Fibonacci</a> number sequence up to the firs digit beyond 100. This is the simplest solution when I worked it out. Finally.

    #!/usr/bin/env python -tt
    ##  Fn = Fn[-2] + Fn[-1]
    Fn = [0,1]
    while Fn[-1] < 100:
      Fn.append(Fn[-2] + Fn[-1])
      print(Fn)

To update that, so the output isn’t so large, modify like so:

    #!/usr/bin/env python -tt
    ##  Fn = Fn[-2] + Fn[-1]
    Fn = [0,1]
    while Fn[-1] < 100:
      Fn.append(Fn[-2] + Fn[-1])
    if Fn[-1] > 100:
      print(Fn)     # prints the whole sequence
      print(Fn[-1]) # prints only last number above 100

Can add further to this, using strings to make it more clear to the end-user (brackets removed for aesthetics in final result):

    #!/usr/bin/env python -tt
    ##  Fn = Fn[-2] + Fn[-1]
    Fn = [0,1]
    while Fn[-1] < 100:
      Fn.append(Fn[-2] + Fn[-1])
    if Fn[-1] > 100:
      print'Fibonacci numbers up to 1st number over 100: ',Fn
      print'First Fibonacci number over 100: ',Fn[-1]

`#MigratedPost`
