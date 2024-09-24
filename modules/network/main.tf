# Creates a virtual network with the specified address space.
resource "azurerm_virtual_network" "vnet" {
  name                = var.vnet_name
  address_space       = [var.vnet_address_space]
  location            = var.location
  resource_group_name = var.resource_group_name
}

# Gateway subnet - Used for VPN or ExpressRoute gateway.
resource "azurerm_subnet" "gateway_subnet" {
  name                 = "GatewaySubnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.10.0.0/29"] # 4 IPs
}

# Active Directory subnet - Will be used for AD services.
resource "azurerm_subnet" "ad_subnet" {
  name                 = "AD-Subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.10.0.8/27"] # 24 IPs
}

# PAW subnet - This is a small subnet for secure devices.
resource "azurerm_subnet" "paw_subnet" {
  name                 = "PAW-Subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.10.0.32/28"] # 10 IPs
}

# Web subnet - Hosting the web-tier VMs.
resource "azurerm_subnet" "web_subnet" {
  name                 = "Web-Subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.10.0.48/26"] # 64 IPs
}

# App subnet - Hosting application-tier VMs.
resource "azurerm_subnet" "app_subnet" {
  name                 = "App-Subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.10.1.0/26"] # 64 IPs
}

# Database subnet - Hosting database-tier resources.
resource "azurerm_subnet" "db_subnet" {
  name                 = "DB-Subnet"
  resource_group_name  = var.resource_group_name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.10.1.64/27"] # 20 IPs
}

# Network security group to allow access from specific IP address.
resource "azurerm_network_security_group" "nsg" {
  name                = "VM-NSG"
  location            = var.location
  resource_group_name = var.resource_group_name

  # Security rule to allow access from specific IP.
  security_rule {
    name                       = "Allow-Access-From-Specific-IP"
    priority                   = 100
    direction                  = "Inbound"
    access                     = "Allow"
    protocol                   = "*"
    source_port_range          = "*"
    destination_port_range     = "*"
    source_address_prefix      = "81.102.23.4"
    destination_address_prefix = "*"
  }
}