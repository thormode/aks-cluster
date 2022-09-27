# aks-cluster

# Deploy NGIN X
az login
az account set --subscription 981c0247-9dfc-41d2-9204-9863db272c6e
az aks get-credentials --resource-group aks_tf_rg --name devops-k8s
kubectl apply -f .\controllers\nginx-deployment.yaml