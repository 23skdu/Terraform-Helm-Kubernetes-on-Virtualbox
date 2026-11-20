# Packer

Configuration lives in `infrastructure/packer`.

## Files

- `centos-7-kube.pkr.hcl` - HCL2 build template.
- `variables.pkr.hcl` - Build variables.
- `http/ks.cfg` - Kickstart file served during installation.
- `scripts/setup.sh` - Installs VirtualBox guest additions.
- `scripts/teardown.sh` - Zeroes free space before export.

## Common commands

```sh
packer init .
packer fmt -check .
packer validate .
packer build centos-7-kube.pkr.hcl
```