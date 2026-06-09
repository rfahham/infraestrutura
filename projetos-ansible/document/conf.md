# Configuração

Para o Ansible executar as receitas nos servidores, precisamos informar o endereço dos servidores.

No arquivo `ansible.cfg` constará as seguintes linhas:

```bash
cat ansible.cfg

[defaults]
inventory = /etc/ansible/hosts
```

No arquivo `hosts` constará as seguintes linhas:

```bash
cat hosts

[local]
localhost ansible_connection=local
```

## WSL

No Caso do WSL no Windows o diretório e os arquivos acima mencionados deverão ser criados manualmente.

```bash
cd /etc
sudo mkdir ansible
touch ansible.cfg
touch hosts
```

Próximo passo... [Adicionar os endereços das instâncias ao arquivo `/etc/ansible/hosts`](hosts.md)