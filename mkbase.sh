#!/bin/bash

yum list installed|cut -d' ' -f1 | grep -v Installed|grep -v Loaded > /root/packages.txt
cat one.ks packages.txt two.ks > config.ks
