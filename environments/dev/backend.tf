terraform {
  backend "azurerm" {
resource_group_name="oracle-rg"
storage_account_name="dwitfstatestorageaccount"
container_name="dwicontainer"
key="terraform-iac.tfstate"


     }
}