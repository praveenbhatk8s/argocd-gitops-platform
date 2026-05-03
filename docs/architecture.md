# GitOps Architecture

Developer → Git Push → ArgoCD Sync → Kubernetes

- ArgoCD watches repo
- Detects drift
- Applies desired state
- Self-heals changes