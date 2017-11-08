#!/bin/sh

mkdir -p /opt/rpms
yum -y update
reposync -p /opt/rpms
