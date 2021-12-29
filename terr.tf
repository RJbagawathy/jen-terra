variable "rg1" {
}
variable "subs" {
}
variable "client" {
}
variable "secret" {
}
variable "ten" {
}

terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      
    }
  }
}

provider "azurerm" {
  features {}  

 
  subscription_id = var.subs
  client_id       = var.client
  client_secret   = var.secret
  tenant_id       = var.ten
}



resource "azurerm_resource_group" "rg" {
  name     = var.rg1
  location = "westus2"
}

resource "azurerm_virtual_network" "vnet" {
    name                = "myTFVnet"
    address_space       = ["10.0.0.0/16"]
    location            = "westus2"
    resource_group_name = var.rg1
}



