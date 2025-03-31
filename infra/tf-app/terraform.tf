terraform {
  required_version = "~> 1.5"


  backend "azurerm" {
    resource_group_name  = "sing1249-githubactions-rg"
    storage_account_name = "sing1249githubactions1"
    container_name       = "tfstate"
    key                  = "prod.app.tfstate"
    use_oidc             = true
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
  use_oidc = true
}
