#!/bin/bash
mkdir /opt/rpms/installed
rpm -qa|xargs -i yumdownloader --destdir /opt/rpms/installed {}
createrepo /opt/rpms

