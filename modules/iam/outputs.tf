# Outputs for the IAM module

output "role_assignments" {
  description = "The role assignments that were made."
  value       = azurerm_role_assignment.role_assignment
}