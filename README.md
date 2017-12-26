# livecd
Components for CentOS LiveCD

These are some files that are useful to create a CentOS LiveCD for hosting projects.

The intent is to create a single Linux platform that can be modified with anisible roles to fulfill all needs.

the Scripts need to be checked out into /opt/rcn so you'll need to run

yum -y install git

and

mkdir /opt/rcn

git clone https://github.com/ScottSyms/livecd /opt/rcn

Then run /opt/rcn/scripts/getbase.sh followed by
/opt/rcn/scripts/get3rdpartyrepos.sh

