data "azurerm_resource_group" "myrg" {
  name = "stg-static-rg"

}

# Random String Resource
resource "random_string" "myrandom" {
  length  = 6
  upper   = false
  special = false
  numeric = false
}

resource "azurerm_storage_account" "mystg" {
  name                     = "${var.storageact}${random_string.myrandom.id}"
  resource_group_name      = data.azurerm_resource_group.myrg.name
  location                 = data.azurerm_resource_group.myrg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = var.stgacckind
}

resource "azurerm_storage_account_static_website" "example" {
  storage_account_id = azurerm_storage_account.mystg.id
  error_404_document = var.errorpage
  index_document     = var.indexpage
}
