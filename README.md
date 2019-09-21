# Terraform-Helm-Kubernetes-on-Virtualbox
requires Virtualbox  https://www.virtualbox.org/wiki/Downloads    
requires Terraform  https://www.terraform.io/downloads.html   
requires Packer https://www.packer.io/downloads.html   
requires terraform-provider-virtualbox from https://github.com/terra-farm/terraform-provider-virtualbox/releases/  

$packer build 

$ terraform init
$ terraform plan
$ terraform apply

An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # virtualbox_vm.node[0] will be created
  + resource "virtualbox_vm" "node" {
      + cpus   = 1
      + id     = (known after apply)
      + image  = "virtualbox-centos7.7.1908-kube.box"
      + memory = "2048 mib"
      + name   = "kube-01"
      + status = "running"

      + network_adapter {
          + device                 = "IntelPro1000MTServer"
          + host_interface         = "enp0s25"
          + ipv4_address           = (known after apply)
          + ipv4_address_available = (known after apply)
          + mac_address            = (known after apply)
          + status                 = (known after apply)
          + type                   = "bridged"

