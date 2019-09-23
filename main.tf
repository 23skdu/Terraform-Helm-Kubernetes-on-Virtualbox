resource "virtualbox_vm" "masternode" {
  count     = 1 
  name      = format("kubemaster-%02d", count.index + 1)
  image     = "virtualbox-centos7.7.1908-kube.box"
  cpus      = 2 
  memory    = "2048 mib"
  status    = "running"
  user_data = file("kubemaster")
  network_adapter {
    type           = "hostonly"
    host_interface = "vboxnet0"
    device = "IntelPro1000MTServer"
  }
}
output "kubemasterip" {
  value = virtualbox_vm.masternode.*.network_adapter.0.ipv4_address
}

resource "virtualbox_vm" "workernode" {
  count     = 2 
  name      = format("kubeworker-%02d", count.index + 1)
  image     = "virtualbox-centos7.7.1908-kube.box" 
  cpus      = 1 
  memory    = "2048 mib"
  user_data = file("kubeworker")
  network_adapter {
    type           = "hostonly"
    host_interface = "vboxnet0"
  }
}
output "workerip1" {
  value = element(virtualbox_vm.workernode.*.network_adapter.0.ipv4_address, 1)
}
output "workerip2" {
  value = element(virtualbox_vm.workernode.*.network_adapter.0.ipv4_address, 2)
}


