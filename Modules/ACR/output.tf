/*
This file contains all the outputs defined for the terraform code
*/

output "admin_password" {
    value       = azurerm_container_registry.acr.admin_password
    description = "The object ID of the user"
    sensitive   = true
}