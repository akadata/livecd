#!/bin/sh

# Ensure the package database exists and pull down all the rpms  from every defined rpm archive
mkdir -p /opt/rpms
yum -y update
reposync -p /opt/rpms
