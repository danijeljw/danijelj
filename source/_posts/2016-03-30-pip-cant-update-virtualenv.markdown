---
layout: post
title: "pip can't update virtualenv"
date: 2016-03-30 15:36:16 +1030
comments: true
categories: hacking
author: Danijel-James Wynyard
published: true
---
Tried to run an upgrade for `virtualenv` using `PIP` and got the following error:

{% codeblock lang:sh %}
Collecting virtualenv
  Using cached virtualenv-15.0.1-py2.py3-none-any.whl
Installing collected packages: virtualenv
  Found existing installation: virtualenv 15.0.0
    Uninstalling virtualenv-15.0.0:
Exception:
Traceback (most recent call last):
  File "/usr/local/lib/python2.7/site-packages/pip/basecommand.py", line 209, in main
    status = self.run(options, args)
  File "/usr/local/lib/python2.7/site-packages/pip/commands/install.py", line 317, in run
    prefix=options.prefix_path,
  File "/usr/local/lib/python2.7/site-packages/pip/req/req_set.py", line 726, in install
    requirement.uninstall(auto_confirm=True)
  File "/usr/local/lib/python2.7/site-packages/pip/req/req_install.py", line 746, in uninstall
    paths_to_remove.remove(auto_confirm)
  File "/usr/local/lib/python2.7/site-packages/pip/req/req_uninstall.py", line 115, in remove
    renames(path, new_path)
  File "/usr/local/lib/python2.7/site-packages/pip/utils/__init__.py", line 267, in renames
    shutil.move(old, new)
  File "/usr/local/Cellar/python/2.7.11/Frameworks/Python.framework/Versions/2.7/lib/python2.7/shutil.py", line 303, in move
    os.unlink(src)
OSError: [Errno 13] Permission denied: '/usr/local/lib/python2.7/site-packages/virtualenv-15.0.0.dist-info/DESCRIPTION.rst'
{% endcodeblock %}

To resolve this I had to remove the non-brew installed version of `virtualenv` from my sytem by:

{% codeblock lang:sh %}
sudo rm -rf /usr/local/lib/python2.7/site-packages/virtualenv*
{% endcodeblock %}

Finally install the latest version using `PIP` again:

{% codeblock lang:sh %}
pip install virtualenv
{% endcodeblock %}

Problem solved!