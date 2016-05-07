---
layout: post
title: "using env with shebang"
date: 2014-03-09 21:39:08 +1100
comments: true
categories: hacking
author: Danijel-James Wynyard
published: true
---
Starting a script with `#!/bin/bash` instead of `#!/usr/bin/env` bash will assume that the user has `bash` installed at `/bin`. This makes the script portable and asks the enviornment to find the correct `$PATH` to the required interpreter.

Bottom line rule:

    #!/usr/bin/env (sh|bash|python|ruby|csh|ksh|tcsh)

`#MigratedPost`