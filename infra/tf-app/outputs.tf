output "resource_group_name" {
  description = "The name of the resource group created by this configuration"
  value = azurerm_resource_group.app_rg.name
}
