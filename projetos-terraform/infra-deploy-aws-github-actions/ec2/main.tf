terraform {
  required_version = "1.7.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.37.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.6.0"
    }

  }

  # Remote State

  backend "s3" {
    bucket  = "tfstate-058264412712"
    key     = "projetos/infra-deploy-aws-github-actions/terraform.tfstate"
    region  = "us-east-1"
    profile = "terraform"
  }

}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
