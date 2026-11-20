# Getting Started

This repository builds a CentOS 7 based VirtualBox image pre-loaded with Docker and
Kubernetes tooling using [Packer](https://www.packer.io/), then provisions a small
Kubernetes cluster on VirtualBox using [Terraform](https://www.terraform.io/).

## Prerequisites

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads) with a host-only network `vboxnet0`
- [Packer](https://www.packer.io/downloads.html) (>= 1.8)
- [Terraform](https://www.terraform.io/downloads.html) (>= 1.5)
- [terraform-provider-virtualbox](https://github.com/terra-farm/terraform-provider-virtualbox/releases/)
- Vagrant (for the produced box)

## Build the image

```sh
cd infrastructure/packer
packer init .
packer build centos-7-kube.pkr.hcl
```

The resulting box is `virtualbox-centos7.7.1908-kube.box`. Register it with Vagrant/VirtualBox
before running Terraform.

## Provision the cluster

```sh
cd infrastructure/terraform
cp terraform.tfvars.example terraform.tfvars
terraform init
terraform plan
terraform apply
```

## Tear down

```sh
cd infrastructure/terraform
terraform destroy
```