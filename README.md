# argocd-gitops-platform

Production-grade GitOps delivery platform using ArgoCD.

## Features

- App of Apps pattern
- Multi-environment deployments (dev/stage/prod)
- Helm-based microservices
- Automated sync & drift detection
- RBAC and project isolation
- Git as single source of truth

## Architecture

GitHub → ArgoCD → Kubernetes

## Key Concepts

- GitOps model
- Declarative infrastructure
- Continuous reconciliation
- Environment promotion

## Usage

1. Install ArgoCD
2. Apply bootstrap configs
3. Deploy app-of-apps