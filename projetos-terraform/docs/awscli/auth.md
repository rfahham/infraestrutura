# Autenticação da AWS via AWSCLI

## Criar o usuário via console

https://us-east-1.console.aws.amazon.com/iam/home?region=us-east-1#/users

Nome do usuário: 

Criar chave de acesso:

Command Line Interface (CLI)
Você planeja usar essa chave de acesso para permitir que a AWS CLI acesse sua conta da AWS.

Será criada a Chave de acesso e a Chave de acesso secreta, baixar `arquivo.csv`.

## Realizar a configuração de acesso da AWSCLI

$ aws configure

AWS Access Key ID [nome]:
AWS Secret Access Key [nome]:
Default region name [nome]:
Default output format [nome]: json

$ cat ~/.aws/credentials

cat ~/.aws/credentials
[terraform]
aws_access_key_id = AKIA8*************
aws_secret_access_key = 5Z/hT/nwP1j************************
[default]
aws_access_key_id = AKIMIUN5VTF34U*************
aws_secret_access_key = KhGeD+rLPV************************

## Pode ser configurado também com Variáveis de ambiente

export AWS_ACCESS_KEY_ID=AKIA8*************
export AWS_SECRET_ACCESS_KEY=5Z/hT/nwP1j************************

