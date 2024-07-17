resource "azurerm_resource_group" "resource_group" {

  name     = var.name
  location = var.location

  tags = var.tags
}

output "resource_group" {
  value = azurerm_resource_group.resource_group
}

output "resource_group_name" {
  value = azurerm_resource_group.resource_group.name
}
