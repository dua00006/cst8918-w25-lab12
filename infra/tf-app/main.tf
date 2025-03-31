resource "azurerm_resource_group" "app_rg" {
  name     = "sing1249-a12-rg"
  location = "Canada Central"
}


resource "azurerm_virtual_network" "main_vnet" {
  name                = "sing1249-vnet"
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = ["10.0.0.0/16"]
}

resource "azurerm_subnet" "main_subnet" {
  name                 = "sing1249-subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.main_vnet.name
  address_prefixes     = ["10.0.1.0/24"]

  tags = {
    owner = "sing1249"
  }
}
