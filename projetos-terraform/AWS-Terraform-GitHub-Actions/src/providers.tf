terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.48.0"
    }
  }
  
  # Salvar o tfstate no bucket da aws
  
  # backend "s3" {
  #   bucket = "Nome do bucket criado na aws"
  #   key = 
  #   region = "us-east-1"
  # }
}

provider "aws" {
  region = var.aws_region
}