
resource "azurerm_linux_virtual_machine" "linux-vm" {
  name                = var.vm_name
  resource_group_name = var.resource_group_name
  location            = var.location
  size                = var.sku
  admin_username      = var.admin_username
  network_interface_ids = [
    var.nic_id,
  ]

  admin_ssh_key {
    username   = var.admin_username
    public_key = file("${path.module}/ssh-keys/azure_linux_vm.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = var.publisher
    offer     = var.offer
    sku       = var.image_sku
    version   = var.image_version
  }

  tags = var.tags
  custom_data = filebase64("${path.module}/app-scripts/app1-cloud-init.txt")
  # connection {
  #   type        = "ssh"
  #   host        = var.public_ip_address
  #   user        = var.admin_username
  #   private_key = file("${path.module}/ssh-keys/azure_linux_vm.pem")
  # }

  # provisioner "file" {
  #   source = var.file_source
  #   destination = var.file_destination
  # }

  # provisioner "remote-exec" {
  #   inline = [
  #     "chmod +x ${var.file_destination}",
  #     "sudo ${var.file_destination}"
  #   ]
  # }
}