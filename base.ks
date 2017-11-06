# Minimal Disk Image
# Scott Syms 2017 Base Information Services

# System authorization information
auth --useshadow --enablemd5

# Root passwords
rootpw --plaintext vishnu
sshpw --username=root --plaintext vishnu

# Firewall configuration
firewall --enabled

# Set up repositories
repo --name=standard --baseurl=file:///opt/rcn/rpms/standard

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

GConf2.x86_64
GeoIP.x86_64
NetworkManager.x86_64
NetworkManager-libnm.x86_64
NetworkManager-team.x86_64
NetworkManager-tui.x86_64
NetworkManager-wifi.x86_64
PyYAML.x86_64
acl.x86_64
aic94xx-firmware.noarch
alsa-firmware.noarch
alsa-lib.x86_64
alsa-tools-firmware.x86_64
ansible.noarch
audit.x86_64
audit-libs.x86_64
authconfig.x86_64
basesystem.noarch
bash.x86_64
bind-libs-lite.x86_64
bind-license.noarch
binutils.x86_64
biosdevname.x86_64
btrfs-progs.x86_64
bzip2-libs.x86_64
ca-certificates.noarch
cairo.x86_64
centos-logos.noarch
centos-release.x86_64
chkconfig.x86_64
coreutils.x86_64
cpio.x86_64
cracklib.x86_64
cracklib-dicts.x86_64
createrepo.noarch
cronie.x86_64
cronie-anacron.x86_64
crontabs.noarch
cryptsetup-libs.x86_64
curl.x86_64
cyrus-sasl-lib.x86_64
dbus.x86_64
dbus-glib.x86_64
dbus-libs.x86_64
dbus-python.x86_64
deltarpm.x86_64
device-mapper.x86_64
device-mapper-event.x86_64
device-mapper-event-libs.x86_64
device-mapper-libs.x86_64
device-mapper-persistent-data.x86_64
dhclient.x86_64
dhcp-common.x86_64
dhcp-libs.x86_64
diffutils.x86_64
dmidecode.x86_64
dosfstools.x86_64
dracut.x86_64
dracut-config-rescue.x86_64
dracut-network.x86_64
dumpet.x86_64
e2fsprogs.x86_64
e2fsprogs-libs.x86_64
ebtables.x86_64
elfutils-default-yama-scope.noarch
elfutils-libelf.x86_64
elfutils-libs.x86_64
ethtool.x86_64
expat.x86_64
file.x86_64
file-libs.x86_64
filesystem.x86_64
findutils.x86_64
fipscheck.x86_64
fipscheck-lib.x86_64
firewalld.noarch
firewalld-filesystem.noarch
fontconfig.x86_64
fontpackages-filesystem.noarch
freetype.x86_64
fxload.x86_64
gawk.x86_64
gdbm.x86_64
genisoimage.x86_64
gettext.x86_64
gettext-libs.x86_64
git.x86_64
glib2.x86_64
glibc.x86_64
glibc-common.x86_64
gmp.x86_64
gnupg2.x86_64
gobject-introspection.x86_64
gpgme.x86_64
graphite2.x86_64
grep.x86_64
groff-base.x86_64
grub2.x86_64
grub2-common.noarch
grub2-pc.x86_64
grub2-pc-modules.noarch
grub2-tools.x86_64
grub2-tools-extra.x86_64
grub2-tools-minimal.x86_64
grubby.x86_64
gzip.x86_64
hardlink.x86_64
harfbuzz.x86_64
hfsplus-tools.x86_64
hostname.x86_64
hwdata.x86_64
info.x86_64
initscripts.x86_64
iproute.x86_64
iprutils.x86_64
ipset.x86_64
ipset-libs.x86_64
iptables.x86_64
iputils.x86_64
irqbalance.x86_64
isomd5sum.x86_64
ivtv-firmware.noarch
iwl100-firmware.noarch
iwl1000-firmware.noarch
iwl105-firmware.noarch
iwl135-firmware.noarch
iwl2000-firmware.noarch
iwl2030-firmware.noarch
iwl3160-firmware.noarch
iwl3945-firmware.noarch
iwl4965-firmware.noarch
iwl5000-firmware.noarch
iwl5150-firmware.noarch
iwl6000-firmware.noarch
iwl6000g2a-firmware.noarch
iwl6000g2b-firmware.noarch
iwl6050-firmware.noarch
iwl7260-firmware.noarch
iwl7265-firmware.noarch
jansson.x86_64
kbd.x86_64
kbd-legacy.noarch
kbd-misc.noarch
kernel.x86_64
kernel.x86_64
kernel-tools.x86_64
kernel-tools-libs.x86_64
kexec-tools.x86_64
keyutils-libs.x86_64
kmod.x86_64
kmod-libs.x86_64
kpartx.x86_64
krb5-libs.x86_64
less.x86_64
libX11.x86_64
libX11-common.noarch
libXau.x86_64
libXdamage.x86_64
libXext.x86_64
libXfixes.x86_64
libXft.x86_64
libXrender.x86_64
libXxf86vm.x86_64
libacl.x86_64
libaio.x86_64
libassuan.x86_64
libattr.x86_64
libblkid.x86_64
libcap.x86_64
libcap-ng.x86_64
libcom_err.x86_64
libcroco.x86_64
libcurl.x86_64
libdaemon.x86_64
libdb.x86_64
libdb-utils.x86_64
libdrm.x86_64
libedit.x86_64
libestr.x86_64
libfastjson.x86_64
libffi.x86_64
libgcc.x86_64
libgcrypt.x86_64
libgnome-keyring.x86_64
libgomp.x86_64
libgpg-error.x86_64
libidn.x86_64
libmnl.x86_64
libmount.x86_64
libndp.x86_64
libnetfilter_conntrack.x86_64
libnfnetlink.x86_64
libnl3.x86_64
libnl3-cli.x86_64
libpciaccess.x86_64
libpipeline.x86_64
libpng.x86_64
libpwquality.x86_64
libselinux.x86_64
libselinux-python.x86_64
libselinux-utils.x86_64
libsemanage.x86_64
libsepol.x86_64
libss.x86_64
libssh2.x86_64
libsss_idmap.x86_64
libsss_nss_idmap.x86_64
libstdc++.x86_64
libsysfs.x86_64
libtasn1.x86_64
libteam.x86_64
libthai.x86_64
libunistring.x86_64
libusal.x86_64
libuser.x86_64
libutempter.x86_64
libuuid.x86_64
libverto.x86_64
libxcb.x86_64
libxml2.x86_64
libxml2-python.x86_64
libxshmfence.x86_64
libyaml.x86_64
linux-firmware.noarch
livecd-tools.x86_64
logrotate.x86_64
lorax.x86_64
lsscsi.x86_64
lua.x86_64
lvm2.x86_64
lvm2-libs.x86_64
lzo.x86_64
make.x86_64
man-db.x86_64
mariadb-libs.x86_64
mesa-libEGL.x86_64
mesa-libGL.x86_64
mesa-libgbm.x86_64
mesa-libglapi.x86_64
microcode_ctl.x86_64
mozjs17.x86_64
mtools.x86_64
ncurses.x86_64
ncurses-base.noarch
ncurses-libs.x86_64
newt.x86_64
newt-python.x86_64
nspr.x86_64
nss.x86_64
nss-pem.x86_64
nss-softokn.x86_64
nss-softokn-freebl.x86_64
nss-sysinit.x86_64
nss-tools.x86_64
nss-util.x86_64
numactl-libs.x86_64
openldap.x86_64
openssh.x86_64
openssh-clients.x86_64
openssh-server.x86_64
openssl.x86_64
openssl-libs.x86_64
os-prober.x86_64
p11-kit.x86_64
p11-kit-trust.x86_64
pam.x86_64
pango.x86_64
parted.x86_64
passwd.x86_64
pciutils-libs.x86_64
pcre.x86_64
perl.x86_64
perl-Carp.noarch
perl-Encode.x86_64
perl-Error.noarch
perl-Exporter.noarch
perl-File-Path.noarch
perl-File-Temp.noarch
perl-Filter.x86_64
perl-Getopt-Long.noarch
perl-Git.noarch
perl-HTTP-Tiny.noarch
perl-PathTools.x86_64
perl-Pod-Escapes.noarch
perl-Pod-Perldoc.noarch
perl-Pod-Simple.noarch
perl-Pod-Usage.noarch
perl-Scalar-List-Utils.x86_64
perl-Socket.x86_64
perl-Storable.x86_64
perl-TermReadKey.x86_64
perl-Text-ParseWords.noarch
perl-Time-HiRes.x86_64
perl-Time-Local.noarch
perl-constant.noarch
perl-libs.x86_64
perl-macros.x86_64
perl-parent.noarch
perl-podlators.noarch
perl-threads.x86_64
perl-threads-shared.x86_64
pinentry.x86_64
pixman.x86_64
pkgconfig.x86_64
plymouth.x86_64
plymouth-core-libs.x86_64
plymouth-graphics-libs.x86_64
plymouth-plugin-label.x86_64
plymouth-plugin-two-step.x86_64
plymouth-scripts.x86_64
policycoreutils.x86_64
polkit.x86_64
polkit-pkla-compat.x86_64
popt.x86_64
postfix.x86_64
procps-ng.x86_64
psmisc.x86_64
pth.x86_64
pyOpenSSL.x86_64
pygpgme.x86_64
pykickstart.noarch
pyliblzma.x86_64
pyparted.x86_64
python.x86_64
python-babel.noarch
python-backports.x86_64
python-backports-ssl_match_hostname.noarch

python-beaker.noarch
python-cffi.x86_64
python-chardet.noarch
python-configobj.noarch
python-decorator.noarch
python-deltarpm.x86_64
python-enum34.noarch
python-firewall.noarch
python-gobject-base.x86_64
python-httplib2.noarch
python-idna.noarch
python-imgcreate.x86_64
python-iniparse.noarch
python-ipaddress.noarch
python-jinja2.noarch
python-kitchen.noarch
python-libs.x86_64
python-linux-procfs.noarch
python-mako.noarch
python-markupsafe.x86_64
python-paramiko.noarch
python-passlib.noarch
python-paste.noarch
python-perf.x86_64
python-ply.noarch
python-pycparser.noarch
python-pycurl.x86_64
python-pyudev.noarch
python-schedutils.x86_64
python-setuptools.noarch
python-six.noarch
python-slip.noarch
python-slip-dbus.noarch
python-tempita.noarch
python-urlgrabber.noarch
python2-cryptography.x86_64
python2-jmespath.noarch
python2-pyasn1.noarch
pyxattr.x86_64
qrencode-libs.x86_64
readline.x86_64
redhat-upgrade-dracut.x86_64
redhat-upgrade-dracut-plymouth.noarch
rootfiles.noarch
rpm.x86_64
rpm-build-libs.x86_64
rpm-libs.x86_64
rpm-python.x86_64
rsync.x86_64
rsyslog.x86_64
sed.x86_64
selinux-policy.noarch
selinux-policy-targeted.noarch
setup.noarch
shadow-utils.x86_64
shared-mime-info.x86_64
slang.x86_64
snappy.x86_64
sqlite.x86_64
squashfs-tools.x86_64
sshpass.x86_64
sssd-client.x86_64
stix-fonts.noarch
sudo.x86_64
syslinux.x86_64
syslinux-extlinux.x86_64
system-config-keyboard.noarch
system-config-keyboard-base.noarch
systemd.x86_64
systemd-libs.x86_64
systemd-sysv.x86_64
sysvinit-tools.x86_64
tar.x86_64
tcp_wrappers-libs.x86_64
teamd.x86_64
tuned.noarch
tzdata.noarch
ustr.x86_64
util-linux.x86_64
vim-minimal.x86_64
virt-what.x86_64
which.x86_64
wodim.x86_64
wpa_supplicant.x86_64
xfsprogs.x86_64
xz.x86_64
xz-libs.x86_64
yum.noarch
yum-metadata-parser.x86_64
yum-plugin-fastestmirror.noarch
yum-utils.noarch
zlib.x86_64

%end
