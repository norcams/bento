## Building norcams boxes

### Prereq

* Packer

### Updated config

Rebase upsteam and check diff of norcams config with original config and update if needed before starting a new build.

``` bash
os_pkrvars/centos/centos-norcams-7-x86_64.pkrvars.hcl
os_pkrvars/almalinux/almalinux-norcams-8-x86_64.pkrvars.hcl
```

### Build

#### Virualbox

``` bash
packer build -only=virtualbox-iso.vm -var-file=os_pkrvars/centos/centos-norcams-7-x86_64.pkrvars.hcl ./packer_templates
packer build -only=virtualbox-iso.vm -var-file=os_pkrvars/almalinux/almalinux-norcams-8-x86_64.pkrvars.hcl ./packer_templates
```

#### KVM/QEMU

``` bash
packer build -only=qemu.vm -var-file=os_pkrvars/centos/centos-norcams-7-x86_64.pkrvars.hcl ./packer_templates
packer build -only=qemu.vm -var-file=os_pkrvars/almalinux/almalinux-norcams-8-x86_64.pkrvars.hcl ./packer_templates
```
