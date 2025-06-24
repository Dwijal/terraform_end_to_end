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


variable "suffix" {
  description = "The suffix to append to the resource group name."
  type        = string
}