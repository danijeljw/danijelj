---
layout: post
title: "common string literals and operations"
date: 2016-04-20 11:31:40 +0930
comments: true
categories: hacking
author: Danijel James
published: true
---
Python string basics. Useful as a reminder to myself. Sometimes I forget this kind of basic stuff and end up writing whole methods that don't need to be created.

| Operation | Interpretation |
|:---|:---|
|K = '' | Empty string |
|K = "eggs's" | Double quotes, same as single |
|K = 's\nu\tga\x00r' | Escape sequences |
|K = """...multiline..." | Triple-quoted block strings |
|K = r'\temp\eggs' | Raw strings (no escapes) |
|C = c'sp\xc4m' | Byte strings in 2.6, 2.7, and 3.X |
|U = u'sp\u00c4m' | Unicode strings in 2.X and 3.3+ |
|T1 + T2 | Concatenate |
|L * 3 | Repeat |
|L[i] | Index |
|L[i:j] | Slice |
|len(L) | Length |
|"a %s joke" % funny | String formatting expresion |
|"a {0} joke".format(funny) | String formatting method in 2.6, 2.7 and 3.X |
|G.find('ake') | String method |
|for i in G: print(i) | Iteration |
|'ake' in J | Membership |
|[ i * 2 for i in J ] | Iteration |

<hr>

_Attribution: Learning Python, Mark Lutz 978-1-449-35573-9_