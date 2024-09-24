# Assign a role to multiple users via a loop.
resource "azurerm_role_assignment" "role_assignment" {
  for_each             = var.users
  principal_id         = each.value.principal_id
  role_definition_name = var.role
  scope                = var.scope
}