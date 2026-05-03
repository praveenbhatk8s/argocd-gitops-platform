#!/usr/bin/env bash

# argocd-gitops-platform structure bootstrap (no repo folder)
# Run this inside your existing repo directory

set -euo pipefail

echo "Creating argocd-gitops-platform structure in current directory..."

# Root
touch README.md

# GitHub workflows
mkdir -p .github/workflows
touch .github/workflows/validate-manifests.yml

# Bootstrap
mkdir -p bootstrap
touch bootstrap/install-argocd.sh
touch bootstrap/repo-setup.yaml
chmod +x bootstrap/install-argocd.sh

# Apps
mkdir -p apps/dev apps/stage apps/prod
touch apps/dev/app-of-apps.yaml
touch apps/dev/frontend.yaml
touch apps/dev/backend.yaml

# Charts
mkdir -p charts/frontend charts/backend
touch charts/frontend/Chart.yaml
touch charts/backend/Chart.yaml

# Manifests
mkdir -p manifests
touch manifests/namespaces.yaml
touch manifests/ingress.yaml

# Projects
mkdir -p projects
touch projects/platform-project.yaml

# Policies
mkdir -p policies
touch policies/sync-windows.yaml

# Docs
mkdir -p docs
touch docs/architecture.md
touch docs/workflows.md
touch docs/troubleshooting.md

echo ""
echo "Done."
echo ""
echo "Next steps:"
echo "git add ."
echo "git commit -m 'Add GitOps platform structure'"