# HOSTS

Arquivo onde configuramos os servidores que irão receber as receitas de instação das aplicações e programas.

No arquivo `hosts` constará as seguintes linhas:

```bash
cat hosts

[local]
localhost ansible_connection=local
```

Preciamos informar o endereço dos servidores, neste caso, foiutilizado a AWS.

```bash
cat hosts

[local]
localhost ansible_connection=local

[nginx]
ec2-user@ec2-35-175-264-122.compute-1.amazonaws.com
ec2-user@ec2-35-112-219-128.compute-1.amazonaws.com
```

## Verificar a comunicação do Ansible com os servidores

```bash
ansible all -m ping

localhost | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3"
    },
    "changed": false,
    "ping": "pong"
}
[WARNING]: Platform linux on host ec2-user@ec2-35-175-264-122.compute-1.amazonaws.com is using the discovered Python
interpreter at /usr/bin/python3.9, but future installation of another Python interpreter could change the meaning of
that path. See https://docs.ansible.com/ansible/2.10/reference_appendices/interpreter_discovery.html for more
information.
ec2-user@ec2-35-175-264-122.compute-1.amazonaws.com | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3.9"
    },
    "changed": false,
    "ping": "pong"
}
[WARNING]: Platform linux on host ec2-user@ec2-35-112-219-128.compute-1.amazonaws.com is using the discovered Python
interpreter at /usr/bin/python3.9, but future installation of another Python interpreter could change the meaning of
that path. See https://docs.ansible.com/ansible/2.10/reference_appendices/interpreter_discovery.html for more
information.
ec2-user@ec2-35-112-219-128.compute-1.amazonaws.com | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3.9"
    },
    "changed": false,
    "ping": "pong"
}
```

Ou isolaladamente passando o grupo `nginx` por exemplo

```bash 
ansible nginx -m ping

[WARNING]: Platform linux on host ec2-user@ec2-35-175-264-122.compute-1.amazonaws.com is using the discovered Python
interpreter at /usr/bin/python3.9, but future installation of another Python interpreter could change the meaning of
that path. See https://docs.ansible.com/ansible/2.10/reference_appendices/interpreter_discovery.html for more
information.
ec2-user@ec2-35-175-264-122.compute-1.amazonaws.com | SUCCESS => {
    "ansible_facts": {
        "discovered_interpreter_python": "/usr/bin/python3.9"
    },
    "changed": false,
    "ping": "pong"
}
```

## Para remover o WARNING

Editar o arquivo de host e adicionar

[all:vars]
ansible_python_interpreter=/usr/bin/python3

[local]
localhost ansible_connection=local

Próximo passo... [Ad Rock](adrock.md)

