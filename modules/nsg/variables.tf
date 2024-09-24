variable "nsg_name" {
  type        = string
  description = "The name of the Network Security Group."
}

variable "location" {
  type        = string
  description = "The location for the NSG."
}

variable "resource_group_name" {
  type        = string
  description = "The resource group where the NSG will be created."
}

variable "nsg_rules" {
  type = list(object({
    name                      = string
    priority                  = number
    direction                 = string
    access                    = string
    protocol                  = string
    source_port_range         = string
    destination_port_range    = string
    source_address_prefix     = string
    destination_address_prefix = string
  }))
  description = "A list of security rules to apply to the NSG."
}