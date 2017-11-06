#!/bin/sh

mkdir -p /opt/rcn/rpms
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
#reposync -p /opt/rcn/rpms
reposync -n -r prometheus-rpm_release -p /opt/rcn/rpms/
