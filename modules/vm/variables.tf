variable "nic_id" {
  description = "Id of network interface."
}
# virtual machine variables
variable "sku" {
  description = "The SKU which should be used for this Virtual Machine"
}

variable "vm_name" {
  description = "The name of the Linux Virtual Machine."
}

variable "location" {
  description = "This field specifes the region in which the virtual network will be created"
}

variable "resource_group_name" {
  description = "This field specifies the resource group name in which virtual network will be created."
}

variable "tags" {
  description = "This field allows you to attach metadata to the resource in the form of key-value pairs."
}

variable "admin_username" {
  description = "The username of the local administrator used for the Virtual Machine"
}

# virtual machine - source image reference fields

variable "publisher" {
  description = "Specifies the Publisher of the Marketplace Image this Virtual Machine should be created from"
}

variable "offer" {
  description = "Specifies the offer of the image used to create the virtual machines."
}

variable "image_sku" {
  description = "Specifies the SKU of the image used to create the virtual machines"
}

variable "image_version" {
  description = "Specifies the version of the image used to create the virtual machines. "
}

variable "file_source" {
  description = "Source path for the script"
}

variable "file_destination" {
  description = "Destination path for the script"
}

variable "public_ip_address" {
  description = "Public IP of the VM"
}