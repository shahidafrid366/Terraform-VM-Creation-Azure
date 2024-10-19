# Terraform VM Creation on Azure

This repository contains a Terraform configuration to provision a Linux Virtual Machine (VM) on Azure using a modular approach.

## Concepts Used

1. **Terraform Modules**: Organized into Networking and VM modules for reusability.
2. **Variable Management**: Parameters for resource names and configurations, enhancing flexibility.
3. **Outputs**: Useful information post-provisioning, such as Resource Group Name, VM ID, and Public IP Address.
4. **Networking Components**: VNet, Subnet, Public IP, Network Interface, and Network Security Group (NSG) for secure connectivity.
5. **Linux Virtual Machine**: Deploys an Ubuntu Server VM with specified configurations.

## Getting Started

1. Clone the repository:
   ```bash
   git clone https://github.com/your_username/Terraform-VM-Creation-Azure.git
   cd Terraform-VM-Creation-Azure
2. Create a .tfvars file for your Azure credentials and configurations.
   
3. Initialize Terraform:
   ```bash
   terraform init
   
4. Plan the deployment:
   ```bash
   terraform plan -var-file="your_variables.tfvars"

5. Apply the configuration:
   ```bash
   terraform apply -var-file="your_variables.tfvars"
   
6. Destroy resources when done:
   ```bash
   terraform destroy -var-file="your_variables.tfvars"

