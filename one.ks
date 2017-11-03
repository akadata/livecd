# Minimal Disk Image
#
sshpw --username=root --plaintext vishnu
# Firewall configuration
firewall --enabled
# Use network installation
repo --name=Grimly --baseurl=file:///root/rpms

# Root password
rootpw --plaintext vishnu
# Network information
network  --bootproto=dhcp --onboot=on --activate --device=eth0
# System authorization information
auth --useshadow --enablemd5
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
# Clear the Master Boot Record
zerombr
# Partition clearing information
clearpart --all
# Disk partitioning information
part / --fstype="ext4" --size=4000
part swap --size=1000

%post --nochroot
# Remove root password
passwd -d root > /dev/null
mkdir /mnt/sysimage/root/rpms
cp /root/config.ks  /mnt/sysimage/root/
cp /root/one.ks  /mnt/sysimage/root/
cp /root/two.ks  /mnt/sysimage/root/
cp /root/packages.txt  /mnt/sysimage/root/
cp /root/test.sh  /mnt/sysimage/root/
cp -ar /root/rpms/*  /mnt/sysimage/root/rpms

# Remove random-seed
rm /mnt/sysimage/var/lib/systemd/random-seed

%packages

