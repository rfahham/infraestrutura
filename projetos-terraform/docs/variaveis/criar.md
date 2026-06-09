# Variáveis

Passando as variáveis direto pela linha de comando

```bash
AWS_ACCESS_KEY_ID={} AWS_SECRET_ACCESS_KEY={} terraform apply
```

Variáveis de ambiente

```bash
export ACCESS_KEY=123456
export SECRET_KEY=secret123456

echo $ACCESS_KEY
123456

echo $SECRET_KEY
secret123456

AWS_ACCESS_KEY_ID=$ACCESS_KEY AWS_SECRET_ACCESS_KEY=$SECRET_KEY terraform apply

```