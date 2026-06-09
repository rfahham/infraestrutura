# Listar instances

## Listando instâncias criadas

```bash
aws ec2 describe-instances | jq
```

## Listando as instâncias de um profile

```bash
aws ec2 describe-instances --profile terraform | jq
```
