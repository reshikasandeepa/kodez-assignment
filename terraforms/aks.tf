module "app_aks_subnet" {
    source = "./modules/subnet"

    subnet_name = "sn-test-aks"
    resource_group_name = module.app_resource_group.resource_group_name
    vnet_name = module.app_vnet.vnet_name
    address_prefixes = var.aks_subnet
}

module "aks_nsg" {
    source = "./modules/nsg"

    nsg_name = "aks-nsg"
    location = module.app_resource_group.location
    resource_group_name = module.app_resource_group.resource_group_name

    security_rules = [
        {
            name                       = "test-rule-1"
            priority                   = 100
            direction                  = "Inbound"
            access                     = "Allow"
            protocol                   = "Tcp"
            source_port_range          = "*"
            destination_port_range     = "*"
            source_address_prefix      = "*"
            destination_address_prefix = "*"
        },
        {
            name                       = "test-rule-2"
            priority                   = 200
            direction                  = "Outbound"
            access                     = "Allow"
            protocol                   = "Tcp"
            source_port_range          = "*"
            destination_port_range     = "*"
            source_address_prefix      = "*"
            destination_address_prefix = "*"
        }
    ]

    subnet_id = module.app_aks_subnet.subnet_id
    
}


module "app_platform_aks" {
    source = "./modules/aks"

    dns_prefix = "${var.aks_cluster_name}-dns"
    location = module.app_resource_group.location
    resource_group_name = module.app_resource_group.resource_group_name
    cluster_name = var.aks_cluster_name
    kubernetes_version = var.kubernetes_version

    nodepool_name = var.aks_nodepool_name
    vm_size = var.nodepool_vm_size
    enable_auto_scaling = true
    max_count = 1
    min_count = 1
    os_disk_size_gb = var.nodepool_node_disk_size
    kubernetes_network_plugin = "azure"

    load_balancer_sku = "basic"

    workspace_id = module.log_analytics.workspace_id

    subnet_id = module.app_aks_subnet.subnet_id

    acr_id = module.app_acr.acr_id

}