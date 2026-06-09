# Enviroments

Utilizado para criar instâncias com características correspondente a cada ambiente

## Config de DEV

```bash
terraform plan -var-file="env/dev.tfvars" -auto-approve
```

## Config de Prod

```bash
terrraform plan -var-file="env/prod.tfvars" -auto-approve
```

## Passando a variável direto pela linha de comando

```bash
TF_VAR_<nome da variável> terraform plan

TF_VAR_instance_type=t3.medium terraform plan
```

## Com Flag

```bash
terraform plan -var="instance_type=t3.medium"
```

## Com Environment

```bash
terraform plan -var-file="env/prod.tfvars"
```