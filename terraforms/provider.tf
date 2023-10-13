terraform {
  backend "azurerm" {
    resource_group_name  = "RG-TFSTATE"
    storage_account_name = "remotetfstatetf"
    container_name       = "tfstate"
    key                  = "app.terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
}