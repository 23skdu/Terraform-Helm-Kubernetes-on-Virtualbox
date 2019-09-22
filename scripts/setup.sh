#!/bin/bash -eux
sudo yum update -y
sudo yum install -y bzip2 make perl kernel-devel
sudo yum -y --enable-repo=epel install dkms
sudo systemctl start dkms
sudo systemctl enable dkms
sudo mount -o loop,ro ~/VBoxGuestAdditions.iso /mnt/
sudo /mnt/VBoxLinuxAdditions.run || :
sudo umount /mnt/
rm -f ~/VBoxGuestAdditions.iso
sudo yum clean all
