environment   = "prod"
instance_type = "t3.medium"
instance_tags = {
  Env     = "Prod"
  Name    = "Amazon Linux"
  Project = "Aplicando Terraform"
}

# terraform plan -var-file="env/prod.tfvars" 

# terraform apply -var-file="env/prod.tfvars" -auto-approve

# terraform destroy -var-file="env/prod.tfvars" -auto-approve