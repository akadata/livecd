#!/bin/sh
#
# add and pull down third party repos and generate repodata files

# Create the RPMs directory to hold the package files
mkdir -p /opt/rpms

# Install the official Xen components repository
yum -y install centos-release-xen


# Add the prometheus repository to the yum repo config directory
cat << EOF > /etc/yum.repos.d/prometheus.repo
[prometheus-rpm_release]
name=prometheus-rpm_release
baseurl=https://packagecloud.io/prometheus-rpm/release/el/7/\$basearch/
repo_gpgcheck=1
gpgcheck=0
enabled=1
gpgkey=https://packagecloud.io/prometheus-rpm/release/gpgkey
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt
metadata_expire=300
EOF

# Import RPM keys for the prometheus application
rpmkeys --import https://packagecloud.io/prometheus-rpm/release/gpgkey

# Force an update 
yum -y update

# Download the latest rpms for 3rd party rpms and generate a global package database.
reposync -n -r prometheus-rpm_release -p /opt/rpms/
reposync -n -r centos-virt-xen -p /opt/rpms/
createrepo /opt/rpms
