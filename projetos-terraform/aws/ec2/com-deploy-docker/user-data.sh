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

# Projeto com SpringBoot
# docker run -p 80:8080 brunograna/public-api:latest

# k6
# docker pull grafana/k6
# k6 new
# k6 run --vus 10 --duration 30s script.js