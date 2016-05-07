---
layout: post
title: "python escape sequences"
date: 2016-03-12 11:49:41 +1030
comments: true
categories: hacking
author: Danijel-James Wynyard
published: true
---
Python 2.x &amp; 3.x escape sequences:

| escape | function |
|:--:|:---|
| \\ | Backslash (\) |
| \' | Single-quote (') |
| \" | Double-quote (") |
| \a | ASCII bell (BEL) | 
| \b | ASCII backspace (BS) | 
| \f | ASCII formfeed (FF) | 
| \n | ASCII linefeed (LF) | 
| \N{name} | Character named name in the Unicode database (Unicode only) | 
| \r | Carriage Return (CR) | 
| \t | Horizontal Tab (TAB) | 
| \uxxxx | Character with 16-bit hex value `xxxx` (Unicode only) | 
| \Uxxxxxxxx | Character with 32-bit hex value `xxxxxxxx` (Unicode only) | 
| \v | ASCII vertical tab (VT) | 
| \ooo | Character with octal value `ooo` | 
| \xhh | Character with hex value `hh` | 

<br>

-----

Source: [Learn Python The Hard Way](http://learnpythonthehardway.org/book/ex10.html)
