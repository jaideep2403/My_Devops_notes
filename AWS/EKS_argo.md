## ArgoCD on EKS
- pre requisites : kubectl , eksctl , awscli
- eksctl create cluster --name <cluster-name> --region <region>
- helm repo add argo https://argoproj.github.io/argo-helm
- kubectl create namespace argocd
- helm install argocd argo/argo-cd -n argocd
- kubetl port-forward service/argocd-server -n argocd 8080:443 (to access UI on browser)
- kubectl -n argocd get secret argocd-initial-admin-secret -o jsonpath="{.data.password}" | base64 -d (to decode initial password)
