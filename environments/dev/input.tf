
variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
  default     = "demo"  
}

variable "resource_group_location" {
  description = "The Azure location where the resource group will be created."
  type        = string
  default     = "East US"   
  
}

variable "account_tier" {
  description = "The tier of the storage account."
  type        = string
  default     = "Standard"
  
}

variable "account_replication_type" {
  description = "The replication type of the storage account."
  type        = string
  default     = "LRS"
  
}

variable "azurerm_storage_account_name" {
  description = "The name of the storage account."
  type        = string
  default     = "demostorageaccount"
  
}

variable "env" {
  description = "The environment for the resource group."
  type        = string
  default     = "dev"
  
}

variable "region" {
  description = "The Azure region where resources will be deployed."
  type        = string
  default     = "East US"
  
}


