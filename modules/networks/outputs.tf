output "virtual_net_name" {
  description = "Virtual Network Name"
  value       = azurerm_virtual_network.vnet.name
}

output "vm_public_ip_address" {
  description = "My Virtual Machine Public IP"
  value       = azurerm_public_ip.pubip[0].ip_address
}

output "nic_id" {
  description = "ID of the virtual network interface"
  value       = azurerm_network_interface.nic.id
}