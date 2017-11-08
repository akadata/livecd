
%post --nochroot

mkdir /mnt/sysimage/opt/rcn/rpms
cp /opt/rcn/config.ks  $INSTALL_ROOT/opt/rcn/
cp /opt/rcn/one.ks  $INSTALL_ROOT/opt/rcn/
cp /opt/rcn/two.ks  $INSTALL_ROOT/opt/rcn/
cp /opt/rcn/mkiso.sh  $INSTALL_ROOT/opt/rch/
cp -ar /opt/rcn/rpms/*  $INSTALL_ROOT/opt/rcn/rpms

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
systemctl start node_exporter

%end
