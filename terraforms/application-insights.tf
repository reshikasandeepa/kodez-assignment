module "application_insights" {
    source = "./modules/application-insights"

    application_insight_name = "app-application-insights"
    location = module.app_resource_group.location
    resource_group_name = module.app_resource_group.resource_group_name
    application_type = "web"
    retention_in_days = 30
    workspace_id = module.log_analytics.workspace_id
}