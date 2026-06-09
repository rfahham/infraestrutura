#!/bin/bash

# Atualizar os pacotes
sudo yum update -y

# Instalar Docker
sudo yum install docker -y
sudo service docker start
sudo usermod -a -G docker ec2-user

# Executa a imagem

# Workon
docker run -p 80:80 rfahham/workon:latest