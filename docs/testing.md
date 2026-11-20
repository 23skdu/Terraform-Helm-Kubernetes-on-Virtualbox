# Testing

Tests live under `tests/`.

- `tests/terraform/` - Terraform formatting and validation checks.
- `tests/packer/` - Packer formatting and validation checks.

Run locally:

```sh
./tests/terraform/test.sh
./tests/packer/test.sh
```

These scripts are also executed in CI. Full end-to-end builds require VirtualBox and
network access and are not run in CI.