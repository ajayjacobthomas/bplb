# Outputs for the network module

output "vnet_id" {
  description = "The ID of the Virtual Network."
  value       = azurerm_virtual_network.vnet.id
}

output "gateway_subnet_id" {
  description = "The ID of the gateway subnet."
  value       = azurerm_subnet.gateway_subnet.id
}