resource "azurerm_application_insights" "aks_app_insights" {
  name                = var.application_insight_name
  location            = var.location
  resource_group_name = var.resource_group_name
  application_type    = var.application_type
  retention_in_days = var.retention_in_days
  workspace_id = var.workspace_id
  
}