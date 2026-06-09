# Definindo o provider

    provider "aws" {
        region = "us-east-2"
        profile = "autenticacao"
    }

## Usado para criação

    resource "aws_instances" "web" {
        ami = imagem
        istance_type = "t2.micro"
    }

## Variable

    variable "nome_de_uma_vaiable "{
        type = "tipo string, number, bool, etc"
        default = "Tem um valor padrão ?"
    }

    variable "idade"{
        type = "number"
        default = 28
        description = "Qual a sua idade?"
    }

## output

    output "nome do output" {
        value = "informação "
    }

    output "idade" {
        value = "var.idade "
        description = "Sua idade"
    }

## data

    data "provider_tipo "nome" {
        "inputs"
    }

    data "aws_ami" "ubuntu" {
        most_recent = true

        filter {
            name = "name"
            values = ["ubuntu/images/hvm-ssd/ubuntu-trusty-14.04-amd-server-*"]
        }

        filter {
            name = "vurtualizacao"
            values = ["hvm"]
        }

        owners = ["099720109477"] # Canonical
    }
