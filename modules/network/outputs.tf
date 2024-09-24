# Outputs for the network module

output "vnet_id" {
  description = "The ID of the Virtual Network."
  value       = azurerm_virtual_network.vnet.id
}

output "gateway_subnet_id" {
  description = "The ID of the gateway subnet."
  value       = azurerm_subnet.gateway_subnet.id
}
output "web_subnet_id" {
  description = "The ID of the Web Subnet"
  value       = azurerm_subnet.web_subnet.id
}

output "app_subnet_id" {
  description = "The ID of the App Subnet"
  value       = azurerm_subnet.app_subnet.id
}