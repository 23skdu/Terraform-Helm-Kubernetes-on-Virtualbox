locals {
  master_names = [for i in range(var.master_count) : format("kubemaster-%02d", i + 1)]
  worker_names = [for i in range(var.worker_count) : format("kubeworker-%02d", i + 1)]
}

resource "virtualbox_vm" "masternode" {
  count  = var.master_count
  name   = local.master_names[count.index]
  image  = var.image
  cpus   = var.master_cpus
  memory = var.master_memory
  status = "running"

  user_data = file("${path.module}/user-data/kubemaster")

  network_adapter {
    type           = "hostonly"
    host_interface = var.host_interface
    device         = "IntelPro1000MTServer"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "virtualbox_vm" "workernode" {
  count  = var.worker_count
  name   = local.worker_names[count.index]
  image  = var.image
  cpus   = var.worker_cpus
  memory = var.worker_memory

  user_data = file("${path.module}/user-data/kubeworker")

  network_adapter {
    type           = "hostonly"
    host_interface = var.host_interface
  }
}