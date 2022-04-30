/*
Deployment of Azure Container Registry
Reference: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/container_registry

Deployment of Management Lock
Reference: https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/management_lock
*/

resource "azurerm_container_registry" "acr" {
    name                = var.acr_name
    resource_group_name = var.resource_group_name
    location            = var.resource_group_location

    sku                 = "Basic"

    admin_enabled       = true
}

resource "azurerm_management_lock" "acr" {
  name       = var.acr_lock_name
  scope      = azurerm_container_registry.acr.id
  lock_level = var.acr_lock_level
  notes      = var.acr_lock_notes
}