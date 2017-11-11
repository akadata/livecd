#!/bin/bash
cd /opt/rcn/iso

livecd-creator --verbose --config=/opt/rcn/ks/livecd.ks --fslabel=NetMon-`date +%Y%m%d-%H%m` --cache=/var/cache/live
