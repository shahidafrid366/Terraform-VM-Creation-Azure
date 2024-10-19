module "network" {
  source                    = "./network"
  resource_group_name       = var.resource_group_name
  location                  = var.location
  vnet_name                 = var.vnet_name
  module_vnet_address_space = var.module_vnet_address_space
  subnet_name               = var.subnet_name
  subnet_prefix             = var.subnet_prefix
  nic_name                  = var.nic_name
  ssh_port                  = var.ssh_port
}

module "vm" {
  source                       = "./vm"
  tfvm                         = var.tfvm
  admin_username               = var.admin_username
  admin_password               = var.admin_password
  location                     = var.location
  resource_group_name          = var.resource_group_name
  vm_size                      = var.vm_size
  nic_id                       = module.network.nic_id
  os_disk_caching              = var.os_disk_caching
  os_disk_storage_account_type = var.os_disk_storage_account_type
  vm_publisher                 = var.vm_publisher
  vm_offer                     = var.vm_offer
  vm_sku                       = var.vm_sku
  vm_version                   = var.vm_version
}

output "vm_id" {
  value       = module.vm.vm_id
  description = "The ID of the Virtual Machine"
}

output "public_ip" {
  value       = module.network.public_ip
  description = "The public IP address assigned to the VM"
}

