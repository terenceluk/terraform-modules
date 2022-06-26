/*
Deployment of VNet and Subnets
Reference: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/virtual_network
           https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet
*/
resource "azurerm_resource_group" "vnet_rg" {
  name     = var.resource_group_name
  location = var.resource_group_location
#  tags     = var.tags
}
/*
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = var.vnet_address_space
  location            = azurerm_resource_group.vnet_rg.location
  resource_group_name = azurerm_resource_group.vnet_rg.name
  subnet = []
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  for_each             = var.subnets
  resource_group_name  = azurerm_resource_group.vnet_rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  name                 = each.value["name"]
  address_prefixes     = each.value["address_prefixes"]
}
*/