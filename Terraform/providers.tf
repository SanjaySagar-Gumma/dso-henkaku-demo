terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.22.0"
    }
  }
  backend "azurerm" {
    #resource_group_name  = "terraformresources"
    storage_account_name = "terraformstore275"
    container_name       = "tfstate"
    key                  = "prod.tfstate"
    access_key = "ge8jdTMXyQV9YbLVF2Qaol3bUth4suE7sEEPwOTbnbcw8rWFve9ycj+xNE7aSVCQ3aEBW34azwpY+AStCJfMvA=="
  }
}

provider "azurerm" {
  features {}
  subscription_id = "8053ba82-af2e-4c6b-b6e4-81497e734db8"
  client_id       = "e101707a-7171-486c-9bdc-e7f95d2bbc9f"
  client_secret   = var.spn_secret
  tenant_id       = "5b973f99-77df-4beb-b27d-aa0c70b8482c"
}