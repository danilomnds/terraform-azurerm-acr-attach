resource "azurerm_role_assignment" "mi-acrpull-kubelet" {
  depends_on = [
    data.azurerm_kubernetes_cluster.aks
  ]
  name = var.name
  scope = var.scope
  role_definition_name = "AcrPull"
  principal_id = data.azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
  condition = var.condition
  condition_version = var.condition_version
  delegated_managed_identity_resource_id = var.delegated_managed_identity_resource_id
  description = var.description
  skip_service_principal_aad_check = var.skip_service_principal_aad_check
  lifecycle {
    ignore_changes = [
      principal_id
    ]
  }
}