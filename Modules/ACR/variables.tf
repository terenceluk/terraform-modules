/*
This file contains all the variables defined for the terraform code
*/

# Variables for Azure Container Registry
variable "acr_name" {}
variable "acr_sku" {}
variable "acr_admin_enabled" {}

# Variables for Management Lock
variable "acr_lock_name" {}
variable "acr_lock_level" {}
variable "acr_lock_notes" {}

# Variables for Azure resource group
variable "resource_group_name" {}

variable "resource_group_location" {}