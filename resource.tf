resource "azurerm_resource_group" "rg-existing" {
  name = "rg-terraform-lab-2"
  location = "East US"
  tags = {
    env = "prod"
  }
}

resource "azurerm_virtual_network" "vn-existing" {
  name                = "vn-terraform-lab-2"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg-existing.location
  resource_group_name = azurerm_resource_group.rg-existing.name
  tags = {
    env = "Prod"
    app = "web"
  }
}
