variable "vnet_name" {
  type        = string
  description = "The name of the Virtual Network"
  default     = "BPLB-VNet"
}

variable "vnet_address_space" {
  type        = string
  description = "The IP range of the Virtual Network"
  default     = "10.10.0.0/16"
}

variable "resource_group_name" {
  type        = string
  description = "The name of the Resource Group"
  default     = "BPLB-RG"
}

variable "location" {
  type        = string
  description = "The location where resources will be deployed"
  default     = "North Europe"
}

variable "admin_username" {
  type        = string
  description = "The admin username for the virtual machines"
  default     = "default-admin"
}

variable "admin_password" {
  type        = string
  description = "The admin password for the virtual machines"
  default     = "defaut&t!23"
}

variable "vm_size" {
  type        = string
  description = "The size of the VM instances"
  default     = "Standard_B2ms"
}

variable "adls_name" {
  type        = string
  description = "The name of the ADLS storage"
  default     = "terratestbplb24"
}

variable "subscription_id" {
  type        = string
  description = "The subscription ID"
  default     = "AJGCP-HUB-SUB"
}