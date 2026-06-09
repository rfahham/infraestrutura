# Interpolação

https://developer.hashicorp.com/terraform/language/expressions/strings#interpolation

Uma ${ ... }sequência é uma interpolação que avalia a expressão dada entre os marcadores, converte o resultado em uma string se necessário e depois o insere na string final:

    "Hello, ${var.name}!"

No exemplo acima, o objeto nomeado var.nameé acessado e seu valor inserido na string, produzindo um resultado como "Olá, Juan!".

## random_pet (Resource)
https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/pet.html


## Utilizando o Random com interpolação

Criar arquivo `random.tf` 

    resource "random_pet" "instance" {
        length = 1
    }

## Aplicar a interpolação

Name    = "instance-${random_pet.instance.id}"
