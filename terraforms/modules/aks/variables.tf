variable "dns_prefix" {
    type = string
    description = "dns prefix use in cluster configuration"
}

variable "location" {
    type = string
    description = "location of the cluster"
}

variable "cluster_name" {
    type = string
    description = "name of the cluster"
}

variable "resource_group_name" {
    type = string
    description = "resource group name"
}

variable "workspace_id" {
    type = string
}

variable "load_balancer_sku" {
    type = string
    description = "load balancer sku"
}

variable "kubernetes_version" {
    type = string
    description = "kubernetes version"
}

variable "nodepool_name" {
    type = string
    description = "nodepool name"
}

variable "vm_size" {
    type = string
    description = "vm size"
}

variable "enable_auto_scaling" {
    type = bool
    description = "enable auto scaling of nodepool instances"
}

variable "max_count" {
    type = number
    description = "max node count"
}

variable "min_count" {
    type = number
    description = "min node count"
}

variable "os_disk_size_gb" {
    type = string
    description = "os disk size in gb"
}

variable "acr_id" {
    type = string
    description = "acr id"
}

variable "kubernetes_network_plugin" {
    type = string
    description = "kubernetes network plugin"
}

variable "subnet_id" {
    type =  string
    description =  "subnet id"
}

