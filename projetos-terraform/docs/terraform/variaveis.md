# Variáveis

Caso não seja informado no arquivo de variáveis o valor default, na aplicação da receita será solicitado a informação

Passando o valor default

    variable "aws_profile" {
    type        = string
    default     = "terraform"
    description = "Profile do terraform que está sendo utilizado"
    }

Removendo valor default

    variable "aws_profile" {
    type        = string

    description = "Profile do terraform que está sendo utilizado"
    }

```bash
terraform plan
var.aws_profile
    Enter a value: Default
```

## Outras formas de setar variáveis

    TF-VAR_aws_profile=terraform terraform apply

    terraform plan -var=awx_profile="terraform -var="instance_type=t2.micro"
