# Variables for the key vault module

variable "key_vault_name" {
  type        = string
  description = "The name of the Key Vault."
}

variable "tenant_id" {
  type        = string
  description = "The tenant ID of the Azure AD."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where the Key Vault will be created."
}

variable "location" {
  type        = string
  description = "The Azure region for the Key Vault."
}