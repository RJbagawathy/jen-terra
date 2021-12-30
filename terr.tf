variable "subs" {
}
variable "cid" {
}
variable "csec" {
}
variable "tid" {
}




terraform {
  backend "azurerm" {
        resource_group_name  = "jenkins-get-started-rg1"
        storage_account_name = "jenkinterra"
        container_name       = "jtcon"
        key                  = "terraform.tfstate"
 }
   
  }

  
provider "azurerm" {
  features {} 
  
  subscription_id = var.subs
  client_id       = var.cid
  client_secret   = var.csec
  tenant_id       = var.tid
}


resource "azurerm_resource_group" "rg" {
  name     = "created_via_jenkins"
  location = "westus2"
}

resource "azurerm_virtual_network" "vnet" {
    name                = "myTFVnet"
    address_space       = ["10.0.0.0/16"]
    location            = "westus2"
    resource_group_name = "created_via_jenkins"
}
