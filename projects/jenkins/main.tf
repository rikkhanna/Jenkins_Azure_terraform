module "network" {
  source = "../../modules/networks"

  # Virtual network fields
  vnet_name     = var.vnet_name
  address_space = var.address_space

  # Subnet fields
  snet_name        = var.snet_name
  address_prefixes = var.address_space

  # public ip fields
  pip_bool = var.pip_bool
  pip_name = var.pip_name

  # nic fields
  nic_name = var.nic_name

  # common fields
  location            = var.location
  resource_group_name = azurerm_resource_group.jenkinsrg.name
  tags                = var.tags
}

module "jenkins_vm" {
  source = "../../modules/vm"

  vm_name             = var.vm_name
  resource_group_name = azurerm_resource_group.jenkinsrg.name
  location            = var.location
  sku                 = var.sku
  offer               = var.offer
  image_sku           = var.image_sku
  publisher           = var.publisher
  image_version       = var.image_version
  tags                = var.tags

  public_ip_address = module.network.vm_public_ip_address

  admin_username   = var.admin_username
  nic_id           = module.network.nic_id

}

resource "azurerm_resource_group" "jenkinsrg" {
  name     = var.resource_group_name
  location = var.location
}