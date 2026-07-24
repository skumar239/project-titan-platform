resource "azurerm_resource_group" "project_titan_rg" {
  name = "rg-project-titan-dev"
  location = "Central India"
  
}

resource "azurerm_storage_account" "project_titan_tfstate" {
  name = "stprojecttitantf001"
  resource_group_name = azurerm_resource_group.project_titan_rg.name
  location = azurerm_resource_group.project_titan_rg.location
  account_tier = "Standard"
  account_replication_type = "LRS"
  
}

resource "azurerm_storage_container" "tfstate" {
  name = "tfstate"
  storage_account_name = azurerm_storage_account.project_titan_tfstate.name
  container_access_type = "private"
  
}