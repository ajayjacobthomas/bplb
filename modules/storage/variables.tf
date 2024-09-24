# Variables for the storage module

variable "storage_account_name" {
  type        = string
  description = "The name of the storage account."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where the storage account will be created."
}

variable "location" {
  type        = string
  description = "The Azure region for the storage account."
}

variable "app_subnet_id" {
  type        = string
  description = "The subnet ID for the App subnet that will have access to the storage account."
}