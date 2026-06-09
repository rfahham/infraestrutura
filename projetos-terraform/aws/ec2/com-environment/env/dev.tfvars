environment   = "dev"
instance_type = "t3.micro"
instance_tags = {
  Env     = "dev"
  Name    = "Amazon Linuz"
  Project = "Aplicando Terraform"
}

# terraform plan -var-file="env/dev.tfvars" 

# terraform apply -var-file="env/dev.tfvars" -auto-approve

# terraform destroy -var-file="env/dev.tfvars" -auto-approve