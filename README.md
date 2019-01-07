## blacklist-named

### lists
* ad sites - cycle-jerk antivirus/ad sites
* phishing sites - speaks for itself
* pushing sites - pushy crappy service advertisers that just won't let it go
* yoyo ad sites - ad server list maintained by Peter Lowe https://pgl.yoyo.org/adservers/

### other files
* db.nullzone - bind zone file

### how to use
* pull all ".conf" files and "null.zone.file" to your bind directory
* add entries to the named.conf, e.g.:<br/>
  include "/etc/bind/ad.sites.conf";<br/>
  include "/etc/bind/phishing.sites.conf";<br/>
  include "/etc/bind/pushing.sites.conf";<br/>
  include "/etc/bind/yoyo.ad.sites.conf";
  
