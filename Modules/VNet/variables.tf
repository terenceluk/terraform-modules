/*
This file contains all the variables defined for the terraform code
*/

# Variables for VNet and Subnets
variable "resource_group_name" {
  type        = string
  description = "Resource group name"
  #  default     = "rg-<resouce group name>"
}

variable "location" {
  type        = string
  description = "Deployment region"
  #  default     = "<region>"
}

variable "tags" {
  type        = map(string)
  description = "Tags for resource"
  #  default = {
  #    "Environment" = "Production/Development/Staging"
  #    "Owner"       = "<name>"
  #  }
}
/*
variable "vnet_name" {
  type        = string
  description = "VNet name"
  #  default     = "vnet-us-eus-dr"
}

variable "vnet_address_space" {
  type        = list(any)
  description = "VNet address space"
  #  default     = ["10.10.0.0/16"]
}

variable "subnets" {
  type = map(any)
  /* default = {
    subnet_1 = {
      name             = "snet-us-eus-dr-172.16.0.0-24"
      address_prefixes = ["172.16.0.0/24"]
    }
    subnet_2 = {
      name             = "snet-us-eus-dr-172.16.1.0-24"
      address_prefixes = ["172.16.1.0/24"]
    }
    subnet_3 = {
      name             = "snet-us-eus-dr-172.16.37.0-24"
      address_prefixes = ["172.16.37.0/24"]
    }
  }
}
*/
