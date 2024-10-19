
variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "client_id" {
  description = "Azure Client ID"
  type        = string
}

variable "client_secret" {
  description = "Azure Client Secret"
  type        = string
  sensitive   = true
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
}

# Networking variables
variable "resource_group_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location for all resources"
  type        = string
  default     = "Central India"
}

variable "vnet_name" {
  description = "Name of the Virtual Network"
  type        = string
}

variable "module_vnet_address_space" {
  description = "Address space for the Virtual Network"
  type        = string
}

variable "subnet_name" {
  description = "Name of the Subnet"
  type        = string
}

variable "subnet_prefix" {
  description = "Address prefix for the Subnet"
  type        = string
}

variable "nic_name" {
  description = "Name of the Network Interface"
  type        = string
}

# Virtual Machine variables
variable "tfvm" {
  description = "Name of the Virtual Machine"
  type        = string
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "Size of the Virtual Machine"
  type        = string
}

variable "os_disk_caching" {
  description = "OS disk caching option"
  type        = string
}

variable "os_disk_storage_account_type" {
  description = "Storage account type for the OS disk"
  type        = string
}

variable "vm_publisher" {
  description = "Publisher of the VM image"
  type        = string
}

variable "vm_offer" {
  description = "Offer for the VM image"
  type        = string
}

variable "vm_sku" {
  description = "SKU for the VM image"
  type        = string
}

variable "vm_version" {
  description = "Version for the VM image"
  type        = string
}

# Security variables
variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
}

variable "ssh_port" {
  description = "Port for SSH access"
  type        = number
}

