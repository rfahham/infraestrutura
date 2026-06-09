# Import

Utilizado para importar recursos que não foram criados pelo terraform

https://www.youtube.com/watch?v=x5P_wnrUq6o&list=PLWQmZVQayUUIgSmOj3GPH2BJcn0hOzIaP&index=15

```bash
terraform import `recurso` `nome do recurso`
```

No caso de um bucket

```bash
terraform import aws_s3_bucket.manual `nome do bucket`
```

No caso de erro de configuração

adicionar a receita no arquivo do bucket `s3.tf`

    resource "aws_s3_bucket" "manual" {
        bucket = "nome do bucket que está na aws"

        tags = {
            pegar em proprites
            Criado = "data da criação"
            Importado = "data da importação"
            ManagedBy "Terraform"
        }
    }

Ao realizar a importação, verificar o id

Import from ID "nome do bucket que está na aws"

```bash
terraform console
> aws_s3_bucket.maual.bucket
> "nome do bucket que está na aws"
```

OBS.: procurar também no terraform.tfstate por "nome do bucket que está na aws"
