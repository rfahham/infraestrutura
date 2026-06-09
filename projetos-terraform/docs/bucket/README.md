# Documentação

https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket

Exemplo:

    resource "aws_s3_bucket" "example" {
    bucket = "my-tf-test-bucket"

    tags = {
        Name        = "My bucket"
        Environment = "Dev"
    }
    }
