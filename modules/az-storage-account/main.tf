resource "azurerm_storage_account" "example" {
  name                     = var.az_storage_account_name
  resource_group_name      = var.az_resource_group_name
  location                 = var.az_resource_group_location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  # Disable public access for enhanced security
  public_network_access_enabled = false
}
