#!/bin/bash

yum list installed|cut -d' ' -f1 | grep -v Installed|grep -v Loaded > /opt/rcn/scratch/packages.txt
cat /opt/rcn/ks/one.ks /opt/rcn/scratch/packages.txt /opt/rcn/ks/two.ks > /opt/rcn/ks/config.ks
