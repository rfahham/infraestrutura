locals {

  common_tags = {
    Name        = "bucket-dev-rfahham"
    Service     = "bucket-dev-rfahham"
    ManagedBy   = "Terraform"
    Environment = var.environment
    Owner       = "Ricardo Fahham"
  }

  ip_filepath = "ips.json"

  file = "index.html"
}
