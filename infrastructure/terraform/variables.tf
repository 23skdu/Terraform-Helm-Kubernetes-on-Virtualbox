variable "image" {
  description = "VirtualBox image (Vagrant box) used for all nodes."
  type        = string
  default     = "virtualbox-centos7.7.1908-kube.box"
}

variable "host_interface" {
  description = "Host-only network interface attached to every VM."
  type        = string
  default     = "vboxnet0"
}

variable "master_count" {
  description = "Number of Kubernetes control-plane (master) nodes."
  type        = number
  default     = 1
}

variable "master_cpus" {
  description = "vCPUs allocated to each master node."
  type        = number
  default     = 2
}

variable "master_memory" {
  description = "Memory allocated to each master node."
  type        = string
  default     = "2048 mib"
}

variable "worker_count" {
  description = "Number of Kubernetes worker nodes."
  type        = number
  default     = 2
}

variable "worker_cpus" {
  description = "vCPUs allocated to each worker node."
  type        = number
  default     = 1
}

variable "worker_memory" {
  description = "Memory allocated to each worker node."
  type        = string
  default     = "2048 mib"
}