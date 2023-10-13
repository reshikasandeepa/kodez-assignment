resource "azurerm_kubernetes_cluster" "aks" {
  dns_prefix          = var.dns_prefix
  location            = var.location
  name                = var.cluster_name
  resource_group_name = var.resource_group_name
  kubernetes_version  = var.kubernetes_version


  default_node_pool {
    name       = var.nodepool_name
    vm_size    = var.vm_size
    orchestrator_version = var.kubernetes_version
    #zones   = [1, 2, 3]
    enable_auto_scaling  = var.enable_auto_scaling
    max_count            = var.max_count
    min_count            = var.min_count
    os_disk_size_gb      = var.os_disk_size_gb
    temporary_name_for_rotation = true
    type           = "VirtualMachineScaleSets" 
    vnet_subnet_id            = var.subnet_id 
  }

  identity { 
    type = "SystemAssigned" 
  }

  network_profile {
    load_balancer_sku = var.load_balancer_sku
    network_plugin = var.kubernetes_network_plugin
  }
  
  azure_active_directory_role_based_access_control {
    managed = true
    azure_rbac_enabled = false
    admin_group_object_ids = ["3c7dae20-421c-4248-9c7f-ed857d589362"]
  }  
  
  oms_agent {
      log_analytics_workspace_id = var.workspace_id
  }
  
}


resource "azurerm_role_assignment" "aksacr_role" {
  scope                = var.acr_id
  role_definition_name = "AcrPull"
  principal_id         = azurerm_kubernetes_cluster.aks.kubelet_identity[0].object_id
}

resource "azurerm_role_assignment" "akssubnet_role" {
  scope                = var.subnet_id
  role_definition_name = "Network Contributor"
  principal_id         = "eb0c33ff-6f5d-412e-8958-85522c5aef39"
} 
