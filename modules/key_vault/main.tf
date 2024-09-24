# Create an Azure Key Vault.
resource "azurerm_key_vault" "kv" {
  name                        = var.key_vault_name
  location                    = var.location
  resource_group_name         = var.resource_group_name
  tenant_id                   = var.tenant_id
  sku_name                    = "standard"

  # You can include purge protection if needed
  purge_protection_enabled    = true

  # Optional configurations for enabling Key Vault for deployment and template deployment
  enabled_for_disk_encryption = true
  enabled_for_deployment      = true
  enabled_for_template_deployment = true
}