# https://learn.microsoft.com/en-us/azure/virtual-machines/linux/quick-create-terraform#prerequisites 

# 1. Initialize Terraform
#    terraform init -upgrade

# 2. Create a Terraform execution plan - To rerun start here
#    terraform plan -out main.tfplan

# 3. Apply a Terraform execution plan
#    terraform apply main.tfplan

# 4. Verify the results - To use SSH to connect to the virtual machine, do the following steps:
#    terraform output -raw tls_private_key > id_rsa
#    chmod 400 id_rsa
#    terraform output public_ip_address
#    ssh -i id_rsa azureuser@<public_ip_address>

#  5. Clean up resources
#    terraform plan -destroy -out main.destroy.tfplan
#    terraform apply main.destroy.tfplan


terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>2.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
    tls = {
      source  = "hashicorp/tls"
      version = "~>4.0"
    }
  }
}

provider "azurerm" {
  features {}
}