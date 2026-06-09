# Terraform Registry

Discover Terraform providers that power all of Terraform’s resource types, or find modules for quickly deploying common infrastructure configurations.

`https://registry.terraform.io/`

`https://registry.terraform.io/browse/providers`

`https://registry.terraform.io/providers/hashicorp/aws/latest`

`https://registry.terraform.io/providers/hashicorp/aws/latest/docs`

search for aws_s3-bucket

`https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket`

main.tf

resource "aws_s3_bucket" "example" {
  bucket = "my-tf-test-bucket"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
