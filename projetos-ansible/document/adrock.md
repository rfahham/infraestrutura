# AD ROCK

Executar somente uma tarefa, sem a necessidade do playbook

```bash
ansible all -i 'IP,' -m ping --private-key=~/,ssh/rsa_pub -u root
```

ou criar o arqeuivo hosts e adicionar os IPS

```bash
ansible all -i hosts -m ping --private-key=~/,ssh/rsa_pub -u root
```

Executar em um grupo de servidores

```bash
ansible nginx -i hosts -m ping --private-key=~/,ssh/rsa_pub -u root
```

## Instalando NGINX

```bash
ansible all -i hosts -m apt -a "name=nginx update_cache=true"
```

Quando precisar de privilégio de usuário, adicionar o --become no comando acima, ou --ask-become-pass

## Trabalhando com serviços

### Restart

```bash
ansible host -m service -a "name=crond state=restarted enable=yes" --become
```

### Stop

```bash
ansible host -m service -a "name=crond state=stopped enable=yes" --become
```

### Status

```bash
ansible grafana -m shell -a "systemctl status grafana"
```

### Stop

```bash
ansible host -m service -a "name=crond state=started enable=yes" --become
```

## Copiar o index.html para o servidor

```bash
ansible all -i hosts -m copy -a "src=index.html dest=/var/www/html/"
```

## Verificando a versão das instâncias

```bash
ansible all -m shell -a "cat /etc/os-release"
```

## Filtro


```bash
ansible grafana -m setup -a "filter=ansible_distribution"
```

Proximo passo... Criar o [playbook.yaml](play.md)