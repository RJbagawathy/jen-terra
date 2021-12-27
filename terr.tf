terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      
    }
  }

  

}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "pope"
  location = "westus2"
}

resource "azurerm_resource_group" "rg1" {
  name     = "pope1"
  location = "westus2"
}
