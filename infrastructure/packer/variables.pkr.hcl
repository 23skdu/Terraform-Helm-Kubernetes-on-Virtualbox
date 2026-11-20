variable "iso_checksum" {
  type    = string
  default = "sha256:9a2c47d97b9975452f7d582264e9fc16d108ed8252ac6816239a3b58cef5c53d"
}

variable "iso_url" {
  type    = string
  default = "http://mirrors.ocf.berkeley.edu/centos/7.7.1908/isos/x86_64/CentOS-7-x86_64-Minimal-1908.iso"
}

variable "ssh_username" {
  type    = string
  default = "vagrant"
}

variable "ssh_password" {
  type      = string
  default   = "vagrant"
  sensitive = true
}

variable "vm_name" {
  type    = string
  default = "packer-build-centos-7"
}