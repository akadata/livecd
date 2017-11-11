# Minimal Disk Image
# Scott Syms 2017 Base Information Services

# System authorization information
auth --useshadow --enablemd5

# Root passwords
rootpw --plaintext password
sshpw --username=root --plaintext password

# Firewall configuration
firewall --enabled

# Set up repositories
repo --name=standard --baseurl=file:///opt/rpms/

# Network information
network  --bootproto=dhcp --onboot=on --activate --device=eth0

# System keyboard
keyboard --xlayouts=us --vckeymap=us

# System language
lang en_US.UTF-8

# SELinux configuration
selinux --enforcing

# Installation logging level
logging --level=info

# Shutdown after installation
shutdown

# System timezone
timezone  --utc Etc/UTC

# System bootloader configuration
bootloader --location=mbr
zerombr

# Partition clearing information
clearpart --all

# Disk partitioning information
part / --fstype="ext4" --size=5000
part swap --size=1000

%post --nochroot

mkdir /mnt/sysimage/opt/rcn/rpms
cp /opt/rcn/config.ks  /mnt/sysimage/opt/rcn/
cp /opt/rcn/one.ks  /mnt/sysimage/opt/rcn/
cp /opt/rcn/two.ks  /mnt/sysimage/opt/rcn/
cp /opt/rcn/mkiso.sh  /mnt/sysimage/opt/rch/
cp -ar /opt/rcn/rpms/*  /mnt/sysimage/opt/rcn/rpms

# Remove random-seed
rm /mnt/sysimage/var/lib/systemd/random-seed

%packages

