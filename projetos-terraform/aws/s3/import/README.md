# Import

Utilizado para importar um recurso que não foi criado por uma receita do terraform

## Importando um bucket

Comando:
    terraform import aws_s3_bucket.bucket <nome-do-bucket-na-aws>

```bash
terraform import aws_s3_bucket.bucket bucket-whale
```

    aws_s3_bucket.bucket: Importing from ID "bucket-whale"...
    aws_s3_bucket.bucket: Import prepared!
    Prepared aws_s3_bucket for import
    aws_s3_bucket.bucket: Refreshing state... [id=bucket-whale]

    Import successful!

    The resources that were imported are shown above. These resources are now in
    your Terraform state and will henceforth be managed by Terraform.

https://www.youtube.com/watch?v=x5P_wnrUq6o&list=PLWQmZVQayUUIgSmOj3GPH2BJcn0hOzIaP&index=15