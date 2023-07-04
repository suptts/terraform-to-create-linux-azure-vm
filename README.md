# terraform-to-create-linux-azure-vm

1. Initialize Terraform

```terraform
terraform init -upgrade
```

2. Create a Terraform execution plan - To rerun start here
```terraform
terraform plan -out main.tfplan
```
3. Apply a Terraform execution plan
```terraform   
terraform apply main.tfplan
```

4. Verify the results - To use SSH to connect to the virtual machine, do the following steps:

```terraform
terraform output -raw tls_private_key > id_rsa
chmod 400 id_rsa
terraform output public_ip_address
ssh -i id_rsa azureuser@<public_ip_address>
```

5. Clean up resources

```terraform
terraform plan -destroy -out main.destroy.tfplan
terraform apply main.destroy.tfplan
```
