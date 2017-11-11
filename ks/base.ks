# Minimal Disk Image
# Scott Syms 2017 Halifax Base Information Services

# System authorization information
auth --useshadow --enablemd5

# Root passwords
rootpw --plaintext vishnu
sshpw --username=root --plaintext vishnu

# Firewall configuration
firewall --enabled

# Set up repositories
repo --name=rcnspin --baseurl=file:///opt/rpms

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


%packages

GConf2
GeoIP
ModemManager-glib
NetworkManager
NetworkManager-glib
NetworkManager-libnm
NetworkManager-team
NetworkManager-tui
NetworkManager-wifi
PyYAML
SDL
acl
adwaita-cursor-theme.noarch
adwaita-icon-theme.noarch
aic94xx-firmware.noarch
alsa-firmware.noarch
alsa-lib
alsa-tools-firmware
anaconda
anaconda-core
anaconda-gui
anaconda-tui
anaconda-widgets
ansible.noarch
at-spi2-atk
at-spi2-core
atk
audit
audit-libs
audit-libs-python
augeas-libs
authconfig
autogen-libopts
avahi-glib
avahi-libs
basesystem.noarch
bash
bind-libs-lite
bind-license.noarch
binutils
biosdevname
boost-system
boost-thread
bridge-utils
btrfs-progs
bzip2-libs
ca-certificates.noarch
cairo
cairo-gobject
cdparanoia-libs
celt051
centos-logos.noarch
centos-release
centos-release-virt-common.noarch
checkpolicy
chkconfig
chrony
colord-libs
container-selinux.noarch
container-storage-setup.noarch
coreutils
cpio
cracklib
cracklib-dicts
createrepo.noarch
cronie
cronie-anacron
crontabs.noarch
cryptsetup
cryptsetup-libs
cryptsetup-python
cups-libs
curl
cyrus-sasl
cyrus-sasl-gssapi
cyrus-sasl-lib
dbus
dbus-glib
dbus-libs
dbus-python
dconf
deltarpm
device-mapper
device-mapper-event
device-mapper-event-libs
device-mapper-libs
device-mapper-multipath
device-mapper-multipath-libs
device-mapper-persistent-data
dhclient
dhcp-common
dhcp-libs
diffutils
dmidecode
dmraid
dmraid-events
docker

docker-client

docker-common

dosfstools
dracut
dracut-config-rescue
dracut-network
dumpet
e2fsprogs
e2fsprogs-libs
ebtables
elfutils-default-yama-scope.noarch
elfutils-libelf
elfutils-libs
enchant
ethtool
expat
fcoe-utils
file
file-libs
filesystem
findutils
fipscheck
fipscheck-lib
firewalld.noarch
firewalld-filesystem.noarch
fontconfig
fontpackages-filesystem.noarch
freetype
fros.noarch
fxload
gawk
gcr
gdbm
gdk-pixbuf2
genisoimage
geoclue2
gettext
gettext-libs
git
glade-libs
glib-networking
glib2
glibc
glibc-common
glusterfs
glusterfs-api
glusterfs-client-xlators
glusterfs-libs
gmp
gnome-icon-theme.noarch
gnupg2
gnutls
gnutls-dane
gnutls-utils
gobject-introspection
gperftools-libs
gpgme
graphite2
grep
groff-base
grub2
grub2-common.noarch
grub2-pc
grub2-pc-modules.noarch
grub2-tools
grub2-tools-extra
grub2-tools-minimal
grubby
gsettings-desktop-schemas
gstreamer1
gstreamer1-plugins-base
gtk-update-icon-cache
gtk2
gtk3
gzip
hardlink
harfbuzz
harfbuzz-icu
hfsplus-tools
hicolor-icon-theme.noarch
hostname
hunspell
hunspell-en-US.noarch
hwdata
hyphen
info
initscripts
iproute
iprutils
ipset
ipset-libs
iptables
iputils
irqbalance
iscsi-initiator-utils
iscsi-initiator-utils-iscsiuio
iso-codes.noarch
isomd5sum
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
jansson
jasper-libs
jbigkit-libs
json-c
json-glib
kbd
kbd-legacy.noarch
kbd-misc.noarch
kernel
kernel
kernel-tools
kernel-tools-libs
kexec-tools
keybinder3
keyutils-libs
kmod
kmod-libs
kpartx
krb5-libs
langtable.noarch
langtable-data.noarch
langtable-python.noarch
lcms2
ldns
less
libICE
libSM
libX11
libX11-common.noarch
libXau
libXcomposite
libXcursor
libXdamage
libXdmcp
libXext
libXfixes
libXfont2
libXft
libXi
libXinerama
libXrandr
libXrender
libXt
libXtst
libXv
libXxf86vm
libacl
libaio
libarchive
libassuan
libattr
libblkid
libcacard
libcap
libcap-ng
libcgroup
libcom_err
libconfig
libcroco
libcurl
libdaemon
libdb
libdb-utils
libdrm
libedit
libepoxy
libestr
libevent
libfastjson
libffi
libfontenc
libgcc
libgcrypt
libgnome-keyring
libgnomekbd
libgomp
libgpg-error
libgudev1
libgusb
libicu
libidn
libiscsi
libjpeg-turbo
libmnl
libmodman
libmount
libndp
libnetfilter_conntrack
libnfnetlink
libnl3
libnl3-cli
libnma
libnotify
libogg
libosinfo
libpcap
libpciaccess
libpipeline
libpng
libproxy
libpwquality
librados2
librbd1
libreport
libreport-anaconda
libreport-cli
libreport-filesystem
libreport-gtk
libreport-plugin-bugzilla
libreport-plugin-reportuploader
libreport-plugin-rhtsupport
libreport-python
libreport-rhel-anaconda-bugzilla
libreport-web
libseccomp
libsecret
libselinux
libselinux-python
libselinux-utils
libsemanage
libsemanage-python
libsepol
libsoup
libss
libssh2
libsss_idmap
libsss_nss_idmap
libstdc++
libsysfs
libtar
libtasn1
libteam
libthai
libtheora
libtiff
libtimezonemap
libunistring
libunwind
libusal
libusbx
libuser
libuser-python
libutempter
libuuid
libverto
libvirt-client
libvirt-libs
libvirt-python
libvisual
libvorbis
libwebp
libxcb
libxkbfile
libxklavier
libxml2
libxml2-python
libxshmfence
libxslt
libyaml
linux-firmware.noarch
livecd-tools
lldpad
logrotate
lorax
lsof
lsscsi
lua
lvm2
lvm2-libs
lzo
make
man-db
mariadb-libs
mdadm
mesa-dri-drivers
mesa-filesystem
mesa-libEGL
mesa-libGL
mesa-libgbm
mesa-libglapi
mesa-private-llvm
microcode_ctl
mobile-broadband-provider-info.noarch
mozjs17
mtools
ncurses
ncurses-base.noarch
ncurses-libs
nettle
newt
newt-python
nm-connection-editor
nmap-ncat
nspr
nss
nss-pem
nss-softokn
nss-softokn-freebl
nss-sysinit
nss-tools
nss-util
numactl-libs
oci-register-machine
oci-systemd-hook
oci-umount
oddjob
oddjob-mkhomedir
openldap
openssh
openssh-clients
openssh-server
openssl
openssl-libs
opus
orc
os-prober
osinfo-db.noarch
osinfo-db-tools
p11-kit
p11-kit-trust
pam
pango
parted
passwd
pciutils
pciutils-libs
pcre
perl
perl-Carp.noarch
perl-Encode
perl-Error.noarch
perl-Exporter.noarch
perl-File-Path.noarch
perl-File-Temp.noarch
perl-Filter
perl-Getopt-Long.noarch
perl-Git.noarch
perl-HTTP-Tiny.noarch
perl-PathTools
perl-Pod-Escapes.noarch
perl-Pod-Perldoc.noarch
perl-Pod-Simple.noarch
perl-Pod-Usage.noarch
perl-Scalar-List-Utils
perl-Socket
perl-Storable
perl-TermReadKey
perl-Text-ParseWords.noarch
perl-Time-HiRes
perl-Time-Local.noarch
perl-constant.noarch
perl-libs
perl-macros
perl-parent.noarch
perl-podlators.noarch
perl-threads
perl-threads-shared
pinentry
pixman
pkgconfig
plymouth
plymouth-core-libs
plymouth-graphics-libs
plymouth-plugin-label
plymouth-plugin-two-step
plymouth-scripts
policycoreutils
policycoreutils-python
polkit
polkit-pkla-compat
popt
postfix
procps-ng
psmisc
pth
pyOpenSSL
pycairo
pygpgme
pykickstart.noarch
pyliblzma
pyparted
python
python-IPy.noarch
python-babel.noarch
python-backports
python-backports-ssl_match_hostname.noarch

python-beaker.noarch
python-blivet.noarch
python-cffi
python-chardet.noarch
python-configobj.noarch
python-coverage
python-decorator.noarch
python-deltarpm
python-enum34.noarch
python-firewall.noarch
python-gobject
python-gobject-base
python-httplib2.noarch
python-idna.noarch
python-imgcreate
python-iniparse.noarch
python-ipaddr.noarch
python-ipaddress.noarch
python-jinja2.noarch
python-kitchen.noarch
python-libs
python-linux-procfs.noarch
python-lxml
python-mako.noarch
python-markupsafe
python-meh.noarch
python-meh-gui.noarch
python-nss
python-ntplib.noarch
python-paramiko.noarch
python-passlib.noarch
python-paste.noarch
python-perf
python-ply.noarch
python-pwquality
python-pyblock
python-pycparser.noarch
python-pycurl
python-pyudev.noarch
python-requests.noarch
python-schedutils
python-setuptools.noarch
python-six.noarch
python-slip.noarch
python-slip-dbus.noarch
python-tempita.noarch
python-urlgrabber.noarch
python-urllib3.noarch
python2-cryptography
python2-jmespath.noarch
python2-pyasn1.noarch
pytz.noarch
pyxattr
qemu-img
qrencode-libs
readline
realmd
redhat-upgrade-dracut
redhat-upgrade-dracut-plymouth.noarch
rest
rootfiles.noarch
rpm
rpm-build-libs
rpm-libs
rpm-python
rsync
rsyslog
satyr
sed
selinux-policy.noarch
selinux-policy-targeted.noarch
setools-libs
setup.noarch
sgpio
shadow-utils
shared-mime-info
skopeo-containers
slang
snappy
spice-server
sqlite
squashfs-tools
sshpass
sssd-client
stix-fonts.noarch
sudo
syslinux
syslinux-extlinux
system-config-keyboard.noarch
system-config-keyboard-base.noarch
systemd
systemd-libs
systemd-sysv
sysvinit-tools
tar
tcp_wrappers-libs
teamd
tigervnc-license.noarch
tigervnc-server-minimal
trousers
tuned.noarch
tzdata.noarch
unbound-libs
usbredir
usermode
ustr
util-linux
vim-minimal
virt-install.noarch
virt-manager-common.noarch
virt-what
webkitgtk4
webkitgtk4-jsc
webkitgtk4-plugin-process-gtk2
which
wodim
wpa_supplicant
xfsprogs
xkeyboard-config.noarch
xml-common.noarch
xmlrpc-c
xmlrpc-c-client
xorg-x11-xkb-utils
xz
xz-libs
yajl
yelp
yelp-libs
yelp-xsl.noarch
yum.noarch
yum-metadata-parser
yum-plugin-fastestmirror.noarch
yum-utils.noarch
zenity
zlib

%end

%post --nochroot

mkdir -p $INSTALL_ROOT/opt/rpms
rsync -a -v /opt/rcn/*  $INSTALL_ROOT/opt/rcn/
rsync -a -v /opt/rpms/*  $INSTALL_ROOT/opt/rpms/

# Remove random-seed
rm $INSTALL_ROOT/var/lib/systemd/random-seed


# Install and run prometheus node exporter
cat << EOF > /etc/systemd/system/node_exporter.service
[Unit]
Description=Prometheus node exporter
After=local-fs.target netwrok-online.target network.target
Wants=local-fs.target network-online.target network.target

[Service]
ExecStart=/usr/bin/node_exporter

[Install]
WantedBy=multi-user.target
EOF
systemctl enable node_exporter

%end
