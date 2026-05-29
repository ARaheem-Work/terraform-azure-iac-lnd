data "azurerm_resource_group" "example" {
  name = var.resource_group_name
}

resource "azurerm_service_plan" "example" {
  name                = var.app_service_plan_name
  resource_group_name = data.azurerm_resource_group.example.name
  location            = data.azurerm_resource_group.example.location
  os_type             = "Linux"
  sku_name            = "P0v4"
}


resource "azurerm_linux_web_app" "example" {
  name                = var.app_service_name
  resource_group_name = data.azurerm_resource_group.example.name
  location            = azurerm_service_plan.example.location
  service_plan_id     = azurerm_service_plan.example.id

  site_config {}
}