module "app_vnet" {
  source             = "./modules/vnet"
  vnet_name          = var.vnet_name
  address_space      = var.vnet
  location           = module.app_resource_group.location
  resource_group_name = module.app_resource_group.resource_group_name
}