AKS_NAME="akstrng"
AKS_RG="rgtrngaks"
mylocation="EASTUS"

az group create --name $AKS_RG --location $mylocation

az aks create --resource-group $AKS_RG --name $AKS_NAME --node-count 1  --load-balancer-sku basic --node-vm-size Standard_B2s --network-plugin azure --network-policy calico  --enable-managed-identity  --generate-ssh-keys --location $mylocation

