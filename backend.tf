terraform {
  backend "azurerm" {
    resource_group_name  = "BPLB-RG"
    storage_account_name = "terraformstatestorage"
    container_name       = "tfstate"
    key                  = "terraform.tfstate"
  }
}