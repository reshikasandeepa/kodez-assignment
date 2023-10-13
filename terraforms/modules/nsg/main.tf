resource "azurerm_network_security_group" "nsg" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name
}

resource "azurerm_network_security_rule" "nsg_rules" {
  count                      = length(var.security_rules)
  name                       = var.security_rules[count.index].name
  priority                   = var.security_rules[count.index].priority
  direction                  = var.security_rules[count.index].direction
  access                     = var.security_rules[count.index].access
  protocol                   = var.security_rules[count.index].protocol
  source_port_range          = var.security_rules[count.index].source_port_range
  destination_port_range     = var.security_rules[count.index].destination_port_range
  source_address_prefix      = var.security_rules[count.index].source_address_prefix
  destination_address_prefix = var.security_rules[count.index].destination_address_prefix
  resource_group_name        = azurerm_network_security_group.nsg.resource_group_name
  network_security_group_name= azurerm_network_security_group.nsg.name
}

resource "azurerm_subnet_network_security_group_association" "subnet_nsg_assoc" {
  subnet_id                 = var.subnet_id
  network_security_group_id = azurerm_network_security_group.nsg.id
}