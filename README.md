# Terraform-Helm-Kubernetes-on-Virtualbox
requires Virtualbox  https://www.virtualbox.org/wiki/Downloads    
requires Terraform  https://www.terraform.io/downloads.html   
requires Packer https://www.packer.io/downloads.html   
requires terraform-provider-virtualbox from https://github.com/terra-farm/terraform-provider-virtualbox/releases/  

$packer build 

$terraform init
$terraform plan
$terraform apply
$ terraform apply
An execution plan has been generated and is shown below.
Resource actions are indicated with the following symbols:
  + create

Terraform will perform the following actions:

  # virtualbox_vm.node[0] will be created
  + resource "virtualbox_vm" "node" {
      + cpus   = 1
      + id     = (known after apply)
      + image  = "virtualbox-centos7.7.1908_kube.box"
      + memory = "2048 mib"
      + name   = "node-01"
      + status = "running"

      + network_adapter {
          + device                 = "IntelPro1000MTServer"
          + host_interface         = "vboxnet1"
          + ipv4_address           = (known after apply)
          + ipv4_address_available = (known after apply)
          + mac_address            = (known after apply)
          + status                 = (known after apply)
          + type                   = "hostonly"
        }
    }

  # virtualbox_vm.node[1] will be created
  + resource "virtualbox_vm" "node" {
      + cpus   = 1
      + id     = (known after apply)
      + image  = "virtualbox-centos7.7.1908_kube.box"
      + memory = "2048 mib"
      + name   = "node-02"
      + status = "running"

      + network_adapter {
          + device                 = "IntelPro1000MTServer"
          + host_interface         = "vboxnet1"
          + ipv4_address           = (known after apply)
          + ipv4_address_available = (known after apply)
          + mac_address            = (known after apply)
          + status                 = (known after apply)
          + type                   = "hostonly"
        }
    }

  # virtualbox_vm.node[2] will be created
  + resource "virtualbox_vm" "node" {
      + cpus   = 1
      + id     = (known after apply)
      + image  = "virtualbox-centos7.7.1908_kube.box"
      + memory = "2048 mib"
      + name   = "node-03"
      + status = "running"

      + network_adapter {
          + device                 = "IntelPro1000MTServer"
          + host_interface         = "vboxnet1"
          + ipv4_address           = (known after apply)
          + ipv4_address_available = (known after apply)
          + mac_address            = (known after apply)
          + status                 = (known after apply)
          + type                   = "hostonly"
        }
    }

Plan: 3 to add, 0 to change, 0 to destroy.

Do you want to perform these actions?
  Terraform will perform the actions described above.
  Only 'yes' will be accepted to approve.

  Enter a value: yes

virtualbox_vm.node[1]: Creating...
virtualbox_vm.node[0]: Creating...
virtualbox_vm.node[2]: Creating...
virtualbox_vm.node[1]: Still creating... [10s elapsed]
virtualbox_vm.node[0]: Still creating... [10s elapsed]
virtualbox_vm.node[2]: Still creating... [10s elapsed]
virtualbox_vm.node[1]: Still creating... [20s elapsed]
virtualbox_vm.node[0]: Still creating... [20s elapsed]
virtualbox_vm.node[2]: Still creating... [20s elapsed]
virtualbox_vm.node[1]: Still creating... [30s elapsed]

