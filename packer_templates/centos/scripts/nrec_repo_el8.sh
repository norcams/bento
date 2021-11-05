#!/bin/sh -eux

repo='https://download.iaas.uio.no/uh-iaas/prod/el8'

cat > /etc/yum.repos.d/CentOS-Linux-BaseOS.repo <<- EOM
[baseos]
name=CentOS Linux -\$releasever - Base
baseurl=$repo/centos-base/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-centosofficial

EOM
cat > /etc/yum.repos.d/CentOS-Linux-Extras.repo <<- EOM
[extras]
name=CentOS Linux -\$releasever - Extras
baseurl=$repo/centos-extras/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-centosofficial

EOM
cat > /etc/yum.repos.d/CentOS-Linux-AppStream.repo <<- EOM
[appstream]
name=CentOS Linux -\$releasever - Updates
baseurl=$repo/centos-AppStream/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-centosofficial

EOM
