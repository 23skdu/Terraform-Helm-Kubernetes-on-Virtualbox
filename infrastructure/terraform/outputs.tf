output "kubemaster_ips" {
  description = "IPv4 addresses of the Kubernetes master nodes."
  value       = [for vm in virtualbox_vm.masternode : vm.network_adapter[0].ipv4_address]
}

output "kubeworker_ips" {
  description = "IPv4 addresses of the Kubernetes worker nodes."
  value       = [for vm in virtualbox_vm.workernode : vm.network_adapter[0].ipv4_address]
}