variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure resource group where the NSG will be created"
  type        = string
}

variable "location" {
  description = "Azure region where the NSG will be created"
  type        = string
}

variable "security_rules" {
  description = "List of security rules for the Network Security Group"
  type        = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}

variable "subnet_id" {
  description = "ID of the subnet to associate with the NSG"
  type        = string
}