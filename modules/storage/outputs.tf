# Outputs for the storage module

output "storage_account_primary_endpoint" {
  description = "The primary endpoint for the storage account."
  value       = azurerm_storage_account.adls.primary_blob_endpoint
}