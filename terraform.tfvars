# Azure Configuration Variables
subscription_id     = "your-subscription-id"
client_id           = "your-client-id"
client_secret       = "your-client-secret"
tenant_id           = "your-tenant-id"

# Network Module Variables
resource_group_name       = "tfrg3"
location                  = "Central India"
vnet_name                 = "tfrg3vnet"
module_vnet_address_space = "10.0.0.0/16"
subnet_name               = "tfrg3subnet"
subnet_prefix             = "10.0.0.0/24"
nic_name                  = "tfrg3nic"

# VM Module Variables
tfvm                         = "tfrg3virtualname"
admin_username               = "tfrg3vm"
admin_password               = "server@12345"  # Consider using a more secure method for passwords
vm_size                      = "Standard_DS1_v2"
os_disk_caching              = "ReadWrite"
os_disk_storage_account_type = "Standard_LRS"
vm_publisher                 = "Canonical"
vm_offer                     = "UbuntuServer"
vm_sku                       = "18.04-LTS"
vm_version                   = "latest"

