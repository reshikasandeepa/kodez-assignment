resource "azurerm_log_analytics_workspace" "log_analytics" {
  name                = var.name 
  location            = var.location                  
  resource_group_name = var.rg_name        
  sku = var.sku
  retention_in_days = var.retention
}
