#!/usr/bin/bash

# baserat på rättigheterna ser vi att del3 är en katalog, således skapar vi den
mkdir /tmp/del3
# Nedan justeras rättigheterna baserat på F3.pdf
chmod ugo+x,ug+r,u+r /tmp/del3
# Justerar ägarskapg med chown baserat på man
chown deltva:deltva /tmp/del3

# Även a1 är en katalog
mkdir /tmp/del3/a1
# justerar rättigheter
chmod go=-rwx,u+rwx /tmp/del3/a1
# justerar ägarskap
chown root:deltva /tmp/del3/a1

# baserat på rättigheterna så kan vi utläsa att detta ska vara en fil
touch /tmp/del3/a2
# rättigheter
chmod u+rwx,go=r /tmp/del3/a2
# ägarskap
chown deltva:root /tmp/del3/a2

# denna gång ytterligare en katalog
mkdir /tmp/del3/a3
# rättigheter
chmod u+rwx,go=r /tmp/del3/a3
# ägarskap
chown deltva:deltva /tmp/del3/a3

# dags för en fil igen
touch /tmp/del3/a4
# rättigheter
chmod ug=rwx,o=-rwx /tmp/del3/a4
# ägarskap
chown root /tmp/del3/a4
