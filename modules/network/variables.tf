# Variables for the network module

variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network."
}

variable "vnet_address_space" {
  type        = string
  description = "The address space for the Virtual Network."
}

variable "resource_group_name" {
  type        = string
  description = "Resource group where the VNet will be created."
}

variable "location" {
  type        = string
  description = "The Azure region where the VNet and subnets will be deployed."
}