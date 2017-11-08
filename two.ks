
%post --nochroot

mkdir /mnt/sysimage/opt/rcn/rpms
cp /opt/rcn/config.ks  $INSTALL_ROOT/opt/rcn/
cp /opt/rcn/one.ks  $INSTALL_ROOT/opt/rcn/
cp /opt/rcn/two.ks  $INSTALL_ROOT/opt/rcn/
cp /opt/rcn/mkiso.sh  $INSTALL_ROOT/opt/rch/
cp -ar /opt/rcn/rpms/*  $INSTALL_ROOT/opt/rcn/rpms

# Remove random-seed
rm $INSTALL_ROOT/var/lib/systemd/random-seed

%end
