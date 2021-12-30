
variable "csec" {
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
  
  subscription_id = "11053afc-3c4e-4207-a817-c33c75b65866"
  client_id       ="8ae49cf9-7c95-4e0b-a7c3-e8056415aa7e"
  client_secret   = var.csec
  tenant_id       = "d518bac2-5294-4997-aa33-d4f6fd3a4844"
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
