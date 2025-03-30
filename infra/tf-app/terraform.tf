terraform {
  backend "azurerm" {
    resource_group_name  = "sing1249-githubactions-rg"
    storage_account_name = "sing1249githubactions1" #Updated the name as we Accidentally did in wrong subscription and name can not be used again.
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
  }

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}
