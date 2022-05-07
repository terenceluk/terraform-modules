/*
This file contains all the variables defined for the terraform code
*/

# Variables for Azure Container Registry
variable "acr_name" {
  type        = string
  description = "Specify the name of the Container Registry"
  default     = "Azure-Container-Reg-${random_string.random_suffix.result}-cr" # uses random 3 character string
}

variable "acr_sku" {
  type        = string
  description = "Specify the SKU name of the container registry" # Basic, Standard, Permium
  default     = "Basic"
}

variable "acr_admin_enabled" {
  type        = string
  description = "Specify whether the admin user is enabled"
  default     = "False" 
}

# Variables for Management Lock
variable "acr_lock_name" {
  type        = string
  description = "Specify that lock name"
  default     = "Prevent Delete"
}

variable "acr_lock_level" {
  type        = string
  description = "Configure the type of lock"
  default     = "CanNotDelete"
}

variable "acr_lock_notes" {
  type        = string
  description = "Configure the management lock note"
  default     = "Lock to disable deleting"
}

# Variables for Azure resource group
variable "resource_group_name" {
  type        = string
  description = "Configure resource group name"
}

variable "resource_group_location" {
  type        = string
  description = "Configure resource group location"
}