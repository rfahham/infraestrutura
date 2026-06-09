terraform {
  required_version = "1.7.4"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.37.0"
    }

  }

}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

# Puxar informção
data "aws_caller_identity" "current" {}

# Criar recurso
resource "aws_s3_bucket" "remote-state" {

  bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  versioning {
    enabled = true
  }

  tags = {
    Description = ""
    ManagedBy = "terraform"
    Owner = "Fahham"
    CreatedAt = 19-03-2024
  }
}

output "remote_state_bucket" {
  value       = aws_s3_bucket.remote-state.bucket
}

output "remote_state_bucket_arn" {
  value       = aws_s3_bucket.remote-state.arn
}

