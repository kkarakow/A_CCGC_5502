terraform {
  backend "azurerm" {
    resource_group_name   = "HUMBER_CAPSTONE"
    storage_account_name  = "as1storage"
    container_name        = "tfstate"
    key                   = "terraform.tfstate"
  }
}

provider "azurerm" {
  features {}
  subscription_id = "a8f6a53f-ef51-4e2a-a17e-e1f9a73dcc8b"
}