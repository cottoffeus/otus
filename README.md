# Otus Kubernetes Manifests

This repository contains example Kubernetes resources used in training exercises. The manifests describe a simple HTTP echo application and supporting components.

## Directory layout

- `manifests/` holds the base Deployment, Service and Ingress definitions.
- `kubernetes qa/` provides additional examples such as Jobs, CronJobs and TLS configuration.
- `tests/` contains helper scripts to validate the manifests.

## Testing

Run `tests/test_manifests.sh` to ensure that all YAML files are syntactically valid. The script relies on `kubectl` and performs a client-side dry run with validation disabled for every manifest, so no cluster is required:

```bash
./tests/test_manifests.sh
```

Make sure `kubectl` is installed; no cluster connection is required to run the tests.
