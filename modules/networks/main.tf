resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  location            = var.location
  resource_group_name = var.resource_group_name
  address_space       = var.address_space
  tags                = var.tags
}

resource "azurerm_subnet" "subnet" {
  name                 = var.snet_name
  address_prefixes     = var.address_prefixes
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
}

resource "azurerm_public_ip" "pubip" {
  name                = var.pip_name
  location            = var.location
  resource_group_name = var.resource_group_name
  allocation_method   = "Static"
  domain_name_label   = "${var.pip_name}-${random_string.string_random.id}"

  # Only create the public IP if the local variable create_public_ip is set to "true"
  count = var.pip_bool == true ? 1 : 0
}

resource "azurerm_network_interface" "nic" {
  name                = var.nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"

    public_ip_address_id = var.pip_bool == true ? azurerm_public_ip.pubip[0].id : ""
  }
}