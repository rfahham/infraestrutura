# Instalação

https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#pipx-install

## Linux

### Distribuição: Debian e CentOS

```bash
yum install epel-release
yum install ansible

```

### Distribuição: Ubuntu

```bash
apt install ansible
```

### MAC

```bash
brew install ansible
```

## Verificando a instalação

```bash
ansible --version
```

Nas distribuições LINUX, a instalação do Ansible, irá criar um diretório chamado ansible na pasta `/etc` 

Este diretório terá 3 arquivos:

    ansible.cfg
    hosts
    roles

No caso do Windows com WSL precisa criar manualmente essa estrutura de diretório e arquivos

Próximo passo... [configurar o Ansible para acessar os hosts](conf.md)



