resource "virtualbox_vm" "node" {
  count     = 3 
  name      = format("node-%02d", count.index + 1)
  image     = "virtualbox-centos7.7.1908_kube.box"
  cpus      = 1 
  memory    = "2048 mib"

  network_adapter {
    type           = "hostonly"
    host_interface = "vboxnet1"
  }
}

output "IPAddr" {
  value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 1)
}

output "IPAddr_2" {
  value = element(virtualbox_vm.node.*.network_adapter.0.ipv4_address, 2)
}
