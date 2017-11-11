#!/bin/bash
# Create an rpm archive of all currently installed RPMs
mkdir /opt/rpms/installed
rpm -qa|xargs -i yumdownloader --destdir /opt/rpms/installed {}
createrepo /opt/rpms

