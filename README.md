# Terraform, Helm & Kubernetes on VirtualBox

Provision a small Kubernetes cluster on VirtualBox using Terraform and a
Packer-built CentOS 7 image.

## Layout

- `infrastructure/` - Packer and Terraform code.
- `docs/` - Documentation.
- `tests/` - Validation tests.
- `.github/` - CI workflows and dependency updates.

## Prerequisites

- [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
- [Packer](https://www.packer.io/downloads.html)
- [Terraform](https://www.terraform.io/downloads.html)
- [terraform-provider-virtualbox](https://github.com/terra-farm/terraform-provider-virtualbox/releases/)

## Quick start

See [docs/getting-started.md](docs/getting-started.md).

## Keeping dependencies up to date

Dependabot (`.github/dependabot.yml`) opens weekly pull requests for GitHub Actions
and Terraform provider updates. CI (`.github/workflows/ci.yml`) validates formatting
and configuration on every push and pull request.