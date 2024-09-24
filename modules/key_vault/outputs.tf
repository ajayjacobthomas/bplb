# Outputs for the Key Vault module

output "key_vault_uri" {
  description = "The URI of the Key Vault."
  value       = azurerm_key_vault.kv.vault_uri
}