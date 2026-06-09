# Built-in Functions

https://developer.hashicorp.com/terraform/language/functions

A linguagem Terraform inclui diversas funções integradas que você pode chamar de dentro de expressões para transformar e combinar valores. A sintaxe geral para chamadas de função é um nome de função seguido por argumentos separados por vírgulas entre parênteses:

    max(5, 12, 9)

## Exemplo

    variable "instance-ami" {

        type = string

        description = ""
        
        default = "ami-0e731c8a588258d0d"
        
        validation {

            condition = length(var.instance-ami) > 4 && substr(var.instance_ami, 0, 4) == "ami-"

            error-message = "The instance-ami value must be a valid AMI id, starting with \"ami-\""
        }

    }

