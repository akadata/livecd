#!/bin/sh
#
# add and pull down third party repos and generate repodata files

# Install Xen components
yum -y install centos-release-xen

mkdir -p /opt/rpms
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

[prometheus-rpm_release-source]
name=prometheus-rpm_release-source
baseurl=https://packagecloud.io/prometheus-rpm/release/el/7/SRPMS
repo_gpgcheck=1
gpgcheck=0
enabled=0
gpgkey=https://packagecloud.io/prometheus-rpm/release/gpgkey
sslverify=1
sslcacert=/etc/pki/tls/certs/ca-bundle.crt
metadata_expire=300
EOF

# Import RPM keys
rpmkeys --import https://packagecloud.io/prometheus-rpm/release/gpgkey
yum -y update
reposync -n -r prometheus-rpm_release -p /opt/rpms/
reposync -n -r centos-virt-xen -p /opt/rpms/
createrepo /opt/rpms
