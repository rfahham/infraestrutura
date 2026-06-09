resource "aws_s3_bucket" "website" {

  bucket = "bucket-website"

  tags = {
    Name        = "bucket-website"
    Environment = var.aws_environment
    Managedby   = "terraform"
    Owner       = "Ricardo Fahham"
    UpdateAt    = "10-04-2024"
  }
}

resource "aws_s3_bucket" "logs" {

  bucket = "bucket-logs"

  tags = {
    Name        = "bucket-logs"
    Environment = var.aws_environment
    Managedby   = "terraform"
    Owner       = "Ricardo Fahham"
    UpdateAt    = "10-04-2024"
  }
}