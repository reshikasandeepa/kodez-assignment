module "app_resource_group" {
  source              = "./modules/rg"
  resource_group_name = var.rg_name
  location            = var.rg_location
}