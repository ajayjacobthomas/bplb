output "nsg_id" {
  description = "The ID of the Network Security Group."
  value       = azurerm_network_security_group.nsg.id
}

output "nsg_rule_names" {
  description = "The names of the NSG rules that were created."
  value       = [for rule in azurerm_network_security_rule.nsg_rule : rule.name]
}