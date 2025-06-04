#!/bin/bash
set -euo pipefail

# Find all YAML files in the repository
mapfile -t files < <(find . -type f -name '*.yaml')

for file in "${files[@]}"; do
    echo "Checking $file"
    kubectl apply --dry-run=client -f "$file" >/dev/null
done

