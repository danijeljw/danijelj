#!/usr/bin/env bash

sitemapurl=$1

if [ ! -f /tmp/pingstatus ]; then
    touch /tmp/pingstatus
fi

echo Pinging Sitemap file at ${sitemapurl}

encoded=${sitemapurl//\//%2F}
encoded=${encoded//:/%3A}

$(which wget) -O /tmp/pingstatus "http://www.google.com/webmasters/tools/ping?sitemap=${encoded}"

echo Output:

cat /tmp/pingstatus | grep Sitemap
