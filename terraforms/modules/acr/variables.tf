variable "acr_name" {
  description = "Name of the Azure Container Registry"
  type        = string
}

variable "resource_group_name" {
  description = "Name of the Azure resource group where the ACR will be created"
  type        = string
}

variable "location" {
  description = "Azure region where the ACR will be created"
  type        = string
}

variable "acr_sku" {
  description = "SKU of the Azure Container Registry"
  type        = string
  default     = "Basic"
}

variable "admin_enabled" {
  description = "Enable or disable the ACR admin"
  type = bool
}

#variable "retention_days" {
#    description = "Retention days of the Azure Container Registry"
#    type = number
#}

#variable "retention_policy_enabled"{
#    description = "Enable or disable the retention policy of the Azure Container Registry"
#    type = bool
#}
