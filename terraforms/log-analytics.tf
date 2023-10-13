module "log_analytics" {
    source = "./modules/log-analytics"

    name = "app-log-analytics-workspace"
    location = module.app_resource_group.location
    rg_name = module.app_resource_group.resource_group_name
    sku = "PerGB2018"
    retention = 30
}