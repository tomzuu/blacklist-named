#!/bin/bash

LISTS="ad.sites phishing.sites pushing.sites yoyo.ad.sites"

for LIST in $LISTS
do
  curl "https://git.buu.lv:10080/tom/blacklist-named/raw/master/$LIST.conf" | sed 's/null.zone.file/\/etc\/bind\/null.zone.file/g' > /etc/bind/$LIST.conf
done
