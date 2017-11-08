#!/bin/sh

mkdir -p /opt/rcn/rpms
yum -y update
reposync -p /opt/rcn/rpms
