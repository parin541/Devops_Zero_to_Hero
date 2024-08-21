terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.112.0"
    }
  }
}

provider "azurerm" {
  features {
    
  }
}



resource "azurerm_resource_group" "resourcegroup" {
  name     = var.rsgname
  location = var.location
}

resource "azurerm_storage_account" "stgaccount" {
  name                     = var.stgactname
  resource_group_name      = azurerm_resource_group.resourcegroup.name
  location                 = azurerm_resource_group.resourcegroup.location
  account_tier             = "Standard"
  account_replication_type = "GRS"

  tags = {
    environment = "staging"
  }
}