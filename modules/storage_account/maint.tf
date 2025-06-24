resource "azurerm_storage_account" "example" {
  name                     = "${var.azurerm_storage_account_name}${var.suffix}"
  resource_group_name      = var.resource_group_name
  location                 = var.resource_group_location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = "dev"
  }
}