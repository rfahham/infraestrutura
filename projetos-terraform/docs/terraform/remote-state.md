# Remote State utilizando um S3 bucket

Utilizado para salvar o estado do tfstate em um bucket s3

https://developer.hashicorp.com/terraform/language/state/remote

Exemplo: https://developer.hashicorp.com/terraform/language/settings/backends/s3

    terraform {
        backend "s3" {
            bucket = "mybucket"
            key    = "path/to/my/key"
            region = "us-east-1"
        }
    }
