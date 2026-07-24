terraform {
  backend "azurerm" {
    resource_group_name = "rg-project-titan-dev"
    storage_account_name = "stprojecttitantf001"
    container_name = "tfstate"
    key = "project-titan-dev.tfstate"
    
  }
}