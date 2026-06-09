# DEPLOY

Com Terraform e Docker

```bash
terraform fmt
terraform plan 
terraform apply -auto-approve
terraform destroy -auto-approve
```

Acessando a instância via ssh

```bash
ssh ec2-user@Public IPv4 DNS
```

Listar as images

```bash
docker images
```

Verificar se a imagem esá rodando

```bash
docker ps
```

Parar um processo

```bash
docker stop <ID do Container>
```

