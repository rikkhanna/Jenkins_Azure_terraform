variable "vnet_name" {
  description = "Name of the virtual network"
}

variable "address_space" {
  description = "This field defines the IP address range for the virtual network."
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

variable "snet_name" {
  description = "This field specifies the name of the subnet"
}

variable "address_prefixes" {
  description = "This field defines the IP address range for the subnet."
}

variable "nic_name" {
  description = "This field defines the name of the Network Interface resource."
}

variable "pip_name" {
  description = "Defines the name of the Public IP"
}
variable "pip_bool" {
  description = "Boolean - True or False, for creating a public ip"
}