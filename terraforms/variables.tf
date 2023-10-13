variable "aks_cluster_name" {
    type =  string
    default = "app-cluster"
}

variable "kubernetes_version" {
    type = string
    default = "1.26"
}

variable "nodepool_node_disk_size" {
    type = string
    default = "50"
}

variable "nodepool_vm_size" {
    type = string
    default = "Standard_DS2_v2"
}

variable "aks_nodepool_name" {
    type = string
    default = "agentpool"
}

variable "vnet_name" {
    type = string
    default = "APP-VNET"
}

variable "rg_name" {
    type = string
    default = "RG-APP"
}

variable "rg_location" {
    type = string
    default = "East US"
}

variable "acr_sku_version" {
    type = string
    default = "Basic"
}

variable "acr_name" {
    type = string
    default = "appacr5"
}

#### subnets #####
variable "aks_subnet" {
    type = list(string)
    default = ["10.22.32.0/22"]
}

variable "common_subnet" {
    type = list(string)
    default = ["10.22.0.128/25"]
}

#### vnets #####
variable "vnet" {
    type = list(string)
    default = ["10.22.0.0/18"]
}