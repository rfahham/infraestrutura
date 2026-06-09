# Pegando o ID da conta
# data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "bucket" {

  bucket = "bucket-${random_pet.bucket.id}"

  # bucket = "tfstate-${data.aws_caller_identity.current.account_id}"

  tags = {
    Name        = "bucket"
    Environment = var.aws_environment
    Managedby   = "terraform"
    Owner       = "Ricardo Fahham"
    UpdateAt    = "10-04-2024"
  }
}