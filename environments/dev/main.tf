
terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.34.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {
    
  }

  client_id = "32a9011c-c2b2-448c-8174-afee7874e2c5"
  client_secret = "JKE8Q~sne92srj_jLY6c8BEstJ5_~QfltdNJ7bHr"
  subscription_id = "4fb240b1-1383-46e9-b542-bf731811fae5"
  tenant_id = "80c6b510-74f8-4b3c-b9b5-1e751087327d"
}

locals {
  suffux= lower("${var.region}${var.env}")
}



module "resource_group" {
  source = "../../modules/resource_group"
  resource_group_name = var.resource_group_name
  resource_group_location= "East US"
  suffix = local.suffux
}

module "storage_account" {
  source = "../../modules/storage_account"

  resource_group_name = module.resource_group.resource_group_name
  resource_group_location = module.resource_group.resource_group_location
  account_tier = "Standard"
  account_replication_type = "LRS"
  azurerm_storage_account_name = var.azurerm_storage_account_name
  suffix = local.suffux
  
}