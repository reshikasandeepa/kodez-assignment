module "app_acr" {
  source             = "./modules/acr"
  acr_name           = var.acr_name
  resource_group_name = module.app_resource_group.resource_group_name
  location           = module.app_resource_group.location
  acr_sku            = var.acr_sku_version
  admin_enabled      = false
  #retention_policy_enabled = true
  #retention_days = 60
}