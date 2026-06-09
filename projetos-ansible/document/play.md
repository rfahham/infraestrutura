# PLAYBOOK

O playbook é o arquivo onde a receita que o Ansible utilizará para a instalação dos aplicativos nos servidores/instâncias

## Criando os playbooks

Diretório: playbooks

- [nginx](./playbooks/nginx.yaml)
- [copy](./playbooks/copy.yaml)


## Executando o playbook

```bash
ansible-playbook -i hosts main.yaml
```