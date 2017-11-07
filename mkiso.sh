#!/bin/bash
mkdir /root/rpms
#rpm -qa|xargs -i yumdownloader --destdir /root/rpms {}
#createrepo /root/rpms

yum list installed|cut -d' ' -f1 | grep -v Installed|grep -v Loaded > /root/packages.txt
cat one.ks packages.txt two.ks > config.ks
#livecd-creator --verbose --config=/root/config.ks --fslabel=FirstTry --cache=/var/cache/live
