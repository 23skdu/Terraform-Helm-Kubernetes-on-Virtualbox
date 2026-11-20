# Terraform

Configuration lives in `infrastructure/terraform`.

## Files

- `versions.tf` - Terraform and provider version constraints.
- `providers.tf` - Provider configuration.
- `variables.tf` - Input variables with sensible defaults.
- `main.tf` - `virtualbox_vm` resources for master and worker nodes.
- `outputs.tf` - Node IP addresses.
- `terraform.tfvars.example` - Example variable overrides.

## Common commands

```sh
terraform fmt -recursive
terraform init
terraform validate
terraform plan
terraform apply
terraform destroy
```