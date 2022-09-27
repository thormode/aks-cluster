# aks-cluster

# Deploy NGIN X
az login
az account set --subscription 981c0247-9dfc-41d2-9204-9863db272c6e
az aks get-credentials --resource-group aks_tf_rg --name devops-k8s
kubectl apply -f .\controllers\nginx-deployment.yaml

# Import demo app to acr

 az acr import --name "tttttttestACR" --source  mcr.microsoft.com/azuredocs/azure-vote-front:v2 --image azure-vote-front:v2

 az acr repository show-tags --name <tttttttestACR> --repository azure-vote-front --output table

 az acr list --resource-group "aks_tf_rg" --query "[].{acrLoginServer:loginServer}" --output table

 kubectl apply -f .\controllers\azure-vote-all-in-one-redis.yml --validate=false