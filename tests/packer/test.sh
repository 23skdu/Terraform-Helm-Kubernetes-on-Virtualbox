#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
PKR_DIR="${ROOT}/infrastructure/packer"

if ! command -v packer >/dev/null 2>&1; then
  echo "packer not installed; skipping packer checks"
  exit 0
fi

echo "==> packer fmt (check)"
packer fmt -check -recursive "${PKR_DIR}"

echo "==> packer init"
packer -chdir="${PKR_DIR}" init .

echo "==> packer validate"
packer -chdir="${PKR_DIR}" validate .