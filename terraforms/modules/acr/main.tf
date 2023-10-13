resource "azurerm_container_registry" "acr" {
  name                = var.acr_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.acr_sku
  admin_enabled = var.admin_enabled


  #retention_policy {
  #  days    = var.retention_days
  #  enabled = var.retention_policy_enabled
  #}
}