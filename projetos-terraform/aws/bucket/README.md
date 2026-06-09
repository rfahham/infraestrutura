# Variable Interpolation

Concatenar strings com variáveis ou retorno de uma função

No caso da criação de bucketes utilizamos o random_pet que criam um nome randômico

`https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet`

    random_pet.bucket: Creating...
    random_pet.bucket: Creation complete after 0s [id=naturally-vertically-only-flexible-mantis]
    aws_s3_bucket.bucket-dev-rfahham: Creating...
    aws_s3_bucket.bucket-dev-rfahham: Creation complete after 4s [id=naturally-vertically-only-flexible-mantis-dev]

## Listando os buckets

```bash
aws s3 ls --profile terraform
    2024-02-18 16:07:21 bucket-rfahham
    2024-02-21 11:23:01 naturally-vertically-only-flexible-mantis-dev
```

## Local Values

https://developer.hashicorp.com/terraform/language/values/locals

Um valor local atribui um nome a uma expressão , para que você possa usar o nome várias vezes dentro de um módulo em vez de repetir a expressão.

Se você estiver familiarizado com linguagens de programação tradicionais, pode ser útil comparar os módulos do Terraform com as definições de função:

Variáveis ​​de entrada são como argumentos de função.
Os valores de saída são como valores de retorno de função.
Os valores locais são como variáveis ​​locais temporárias de uma função.