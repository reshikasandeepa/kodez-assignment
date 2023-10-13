output "vnet_id" {
  description = "ID of the created Virtual Network"
  value       = azurerm_virtual_network.vnet.id
}

output "location" {
  value = azurerm_virtual_network.vnet.location
}

output "vnet_name" {
  value = azurerm_virtual_network.vnet.name
  }