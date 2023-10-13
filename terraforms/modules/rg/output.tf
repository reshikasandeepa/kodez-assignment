output "resource_group_id" {
  description = "ID of the created resource group"
  value       = azurerm_resource_group.rg.id
}

output "location" {
  value = azurerm_resource_group.rg.location
}

output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}
