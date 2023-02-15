output "username" {
  description = "username of linux VM"
  value       = azurerm_linux_virtual_machine.linux-vm.admin_username
}