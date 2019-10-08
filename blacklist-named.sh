#!/bin/bash

LISTS="ad.sites phishing.sites pushing.sites yoyo.ad.sites"

for LIST in $LISTS
do
  curl -L "https://github.com/tomzuu/blacklist-named/raw/master/$LIST.conf" | sed 's/null.zone.file/\/etc\/bind\/null.zone.file/g' > /etc/bind/$LIST.conf

  #wget -qO- "https://github.com/tomzuu/blacklist-named/raw/master/$LIST.conf" | sed 's/null.zone.file/\/etc\/bind\/null.zone.file/g' > /etc/bind/$LIST.conf
done
