#!/bin/bash

# Ensure that the basic repositories have been downloaded
#/opt/rcn/scripts/get3rdpartyrepos.sh
#/opt/rcn/scripts/getbase.sh

# Move to the iso directory to make the bootable DVD
cd /opt/rcn/iso

# Create the ISO
livecd-creator --verbose --config=/opt/rcn/ks/livecd.ks --fslabel=NetMon-`date +%Y.%m.%d.%H.%m` --cache=/var/cache/live
