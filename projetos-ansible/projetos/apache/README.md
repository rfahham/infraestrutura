# Instalando apache em cloud

## Verificar comunicação/permissão aos servidores

```bash
ansible -i hosts webservers -m ping
```

## Executando o playbook

```bash
ansible-playbook -i hosts playbook.yaml
```