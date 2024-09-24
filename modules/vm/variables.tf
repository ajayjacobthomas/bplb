# Variables for the VM module

variable "vm_name" {
  type        = string
  description = "Name of the virtual machine."
}

variable "vm_size" {
  type        = string
  description = "The size of the VM instance."
}

variable "admin_username" {
  type        = string
  description = "Admin username for the VM."
}

variable "admin_password" {
  type        = string
  description = "Admin password for the VM."
}

variable "subnet_id" {
  type        = string
  description = "The ID of the subnet in which the VM will be created."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where the VM will be created."
}

variable "location" {
  type        = string
  description = "The Azure region for the VM."
}