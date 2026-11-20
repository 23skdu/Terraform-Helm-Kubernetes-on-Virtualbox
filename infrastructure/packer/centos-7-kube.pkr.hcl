packer {
  required_plugins {
    virtualbox = {
      version = ">= 1.0.0"
      source  = "github.com/hashicorp/virtualbox"
    }
  }
}

source "virtualbox-iso" "centos" {
  boot_command = [
    "<tab> text ks=http://{{ .HTTPIP }}:{{ .HTTPPort }}/ks.cfg<enter><wait>"
  ]
  boot_wait               = "10s"
  disk_size               = 20000
  guest_os_type           = "RedHat_64"
  headless                = true
  http_directory          = "http"
  iso_urls = [
    "CentOS-7-x86_64-Minimal-1908.iso",
    var.iso_url
  ]
  iso_checksum            = var.iso_checksum
  ssh_username            = var.ssh_username
  ssh_password            = var.ssh_password
  ssh_port                = 22
  ssh_wait_timeout        = "10000s"
  shutdown_command        = "echo 'vagrant' | sudo -S /sbin/halt -h -p"
  guest_additions_mode    = "upload"
  guest_additions_path    = "/tmp/VBoxGuestAdditions.iso"
  virtualbox_version_file = ".vbox_version"
  vm_name                 = var.vm_name
  vboxmanage = [
    ["modifyvm", "{{.Name}}", "--memory", "2048"],
    ["modifyvm", "{{.Name}}", "--cpus", "1"]
  ]
}

build {
  name    = "centos-7-kube"
  sources = ["source.virtualbox-iso.centos"]

  provisioner "shell" {
    execute_command = "echo 'vagrant' | {{.Vars}} sudo -S -E bash '{{.Path}}'"
    script          = "scripts/setup.sh"
  }

  provisioner "shell" {
    execute_command = "echo 'vagrant' | {{.Vars}} sudo -S -E bash '{{.Path}}'"
    script          = "scripts/teardown.sh"
  }

  post-processor "vagrant" {
    output = "{{.Provider}}-centos7.7.1908-kube.box"
  }
}