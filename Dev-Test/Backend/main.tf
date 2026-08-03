resource "azurerm_resource_group" "backend_rg" {
  name     = "backendrg"
  location = "centralindia"
}

resource "azurerm_storage_account" "backendstorage" {
  name                     = "backendstor"
  resource_group_name      = azurerm_resource_group.backend_rg.name
  location                 = azurerm_resource_group.backend_rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "backendstate" {
  name                  = "backendstate"
  storage_account_id    = azurerm_storage_account.backendstorage.id
  container_access_type = "private"
}
