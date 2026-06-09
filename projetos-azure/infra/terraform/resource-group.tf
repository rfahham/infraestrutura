# Create a resource group
resource "azurerm_resource_group" "rg-azure-tf" {
  name     = "rg-terraform"
  location = "brazilsouth"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vn-azure-tf" {
  name                = "vn-azure"
  resource_group_name = azurerm_resource_group.rg-azure-tf.name
  location            = azurerm_resource_group.rg-azure-tf.location
  address_space       = ["10.0.0.0/16"]
}

# Create a virtual network within the resource group
resource "azurerm_subnet" "vn-azure-tf" {
  name                = "vn-azure"
  resource_group_name = azurerm_resource_group.rg-azure-tf.name
  location            = azurerm_resource_group.rg-azure-tf.location
  address_space       = ["10.0.0.0/16"]
}