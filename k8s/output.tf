output "aks_id" {
  value = azurerm_kubernetes_cluster.k8s.id
}

output "aks_fqdn" {
  value = azurerm_kubernetes_cluster.k8s.fqdn
}

output "aks_node_rg" {
  value = azurerm_kubernetes_cluster.k8s.node_resource_group
}

output "acr_id" {
  value = azurerm_container_registry.acr.id
}

output "acr_login_server" {
  value = azurerm_container_registry.acr.login_server
}

resource "local_file" "kubeconfig" {
  depends_on   = [azurerm_kubernetes_cluster.k8s]
  filename     = "kubeconfig"
  content      = azurerm_kubernetes_cluster.k8s.kube_config_raw
}