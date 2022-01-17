#!/bin/sh -eux

repo='https://download.iaas.uio.no/uh-iaas/prod/el8'

cat > /etc/yum.repos.d/almalinux.repo<<- EOM
[base]
name=AlmaLinux-\$releasever - Base
baseurl=$repo/almalinux-base/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-AlmaLinux

[appstream]
name=AlmaLinux-\$releasever - AppStream
baseurl=$repo/almalinux-AppStream/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-AlmaLinux

[extras]
name=AlmaLinux-\$releasever - Extras
baseurl=$repo/almalinux-extras/
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-AlmaLinux



EOM
