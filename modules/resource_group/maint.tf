resource "azurerm_resource_group" "example" {
  name     = "${var.resource_group_name}${var.suffix}"
  location = var.resource_group_location
}


