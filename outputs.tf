output "rgname" {
  description = "remote resource group name"
  value       = data.azurerm_resource_group.myrg.name
}

output "stgaccname" {
  description = "storage account name"
  value       = azurerm_storage_account.mystg.name
}

output "commonlocation" {
  description = "common location for resources and resource group"
  value       = data.azurerm_resource_group.myrg.location
}
