module "k8s" {
  source              = "./k8s"
  resource_group_name = "aks_tf_rg"
  location            = "West Europe"
  cluster_name        = "devops-k8s"
  system_node_count   = 2
  acr_name            = "tttttttestACR"
}
