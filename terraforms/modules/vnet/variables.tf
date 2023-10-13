variable "vnet_name" {
  description = "Name of the Azure Virtual Network"
  type        = string
}

variable "address_space" {
  description = "Address space of the Virtual Network"
  type        = list(string)
}

variable "location" {
  description = "Azure region where the Virtual Network will be created"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure resource group where the Virtual Network will be created"
  type        = string
}