resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.resource_group_location
}

resource "azurerm_service_plan" "example" {
  name                = var.app_service_plan_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_resource_group.example.location
  os_type             = "Linux"
  sku_name            = "P0v4"
}


resource "azurerm_linux_web_app" "example" {
  name                = var.app_service_name
  resource_group_name = azurerm_resource_group.example.name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id

  https_only = true
  
  site_config {
    ftps_state = "FtpsOnly"
  }
  lifecycle {
    ignore_changes = [
      site_config,
      tags,
      app_settings,
      connection_string,
      ftp_publish_basic_authentication_enabled,
      webdeploy_publish_basic_authentication_enabled
    ]
  }
}