#!/bin/bash
mkdir /opt/rcn/rpms/installed
rpm -qa|xargs -i yumdownloader --destdir /opt/rcn/rpms/installed {}
createrepo /opt/rcn/rpms

