# Architecture

```
.
├── infrastructure/
│   ├── packer/          # Packer template, kickstart, provisioning scripts
│   │   ├── http/        # Kickstart served by Packer's HTTP server
│   │   ├── scripts/     # Guest additions + cleanup
│   │   └── user-data/   # (legacy) node bootstrap scripts
│   └── terraform/       # Terraform configuration for the cluster
├── docs/                # Project documentation
├── tests/               # Validation and smoke tests
└── .github/             # CI workflows and dependency updates
```

- **Packer** builds a CentOS 7 VirtualBox image with Docker, kubeadm and guest additions.
- **Terraform** creates one control-plane node and N worker nodes on the `vboxnet0`
  host-only network, exposing their IP addresses as outputs.