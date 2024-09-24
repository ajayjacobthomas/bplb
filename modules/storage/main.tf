# Create an Azure Data Lake Storage Gen2 account.
resource "azurerm_storage_account" "adls" {
  name                     = var.storage_account_name
  resource_group_name       = var.resource_group_name
  location                  = var.location

  # Use Standard tier and Locally Redundant Storage (LRS)
  account_tier              = "Standard"
  account_replication_type  = "LRS"

  # Enable hierarchical namespace for ADLS Gen2
  enable_hierarchical_namespace = true

  # Access tier: can be "Hot" or "Cool"
  access_tier = "Hot"
}

# Network rules to restrict access to specific subnets
resource "azurerm_storage_account_network_rules" "storage_account_network_rules" {
  storage_account_id = azurerm_storage_account.adls.id
  default_action     = "Deny"

  # Allow access only from App-Subnet
  virtual_network_subnet_ids = [var.app_subnet_id]
}