module "network" {
  source              = "./modules/network"
  vnet_name           = var.vnet_name
  vnet_address_space  = var.vnet_address_space
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "vm_web" {
  source              = "./modules/vm"
  vm_name             = "Web-VM1"
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  subnet_id           = module.network.web_subnet_id  # Pass Web Subnet ID
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "vm_app" {
  source              = "./modules/vm"
  vm_name             = "App-VM1"
  vm_size             = var.vm_size
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  subnet_id           = module.network.app_subnet_id  # Pass App Subnet ID
  resource_group_name = var.resource_group_name
  location            = var.location
}

module "storage" {
  source              = "./modules/storage"
  storage_account_name = var.storage_account_name
  resource_group_name  = var.resource_group_name
  location             = var.location
  app_subnet_id        = module.network.app_subnet_id  # Pass the App Subnet ID
}