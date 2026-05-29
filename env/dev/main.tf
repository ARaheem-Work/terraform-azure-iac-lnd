module "app_service" {
  source = "../../modules/app-service"

  resource_group_name     = var.resource_group_name
  resource_group_location = var.resource_group_location

  # App Service Plan
  app_service_plan_name     = "asp-05282026a"
  
  # App Service
  app_service_name           = "myapp-05282026a"
  
}
