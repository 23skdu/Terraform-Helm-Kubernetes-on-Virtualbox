#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
TF_DIR="${ROOT}/infrastructure/terraform"

echo "==> terraform fmt (check)"
terraform -chdir="${TF_DIR}" fmt -check -recursive

echo "==> terraform init (no backend)"
terraform -chdir="${TF_DIR}" init -backend=false -input=false

echo "==> terraform validate"
terraform -chdir="${TF_DIR}" validate