variable "subnet_name" {
  description = "Name of the Azure Subnet"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure resource group where the Subnet will be created"
  type        = string
}

variable "vnet_name" {
  description = "Name of the Virtual Network containing the Subnet"
  type        = string
}

variable "address_prefixes" {
  description = "Address prefixes for the Subnet"
  type        = list(string)
}