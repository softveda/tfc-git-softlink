# App specific code 01
resource "azurerm_virtual_network" "vnet" {
  name                = "app-vnet"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = ["10.1.0.0/16"]

  subnet {
    name           = "subnet1"
    address_prefix = "10.1.1.0/24"
  }
  subnet {
    name           = "subnet2"
    address_prefix = "10.1.2.0/24"
  }

}
