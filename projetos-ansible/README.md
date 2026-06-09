# Ansible

Ansible é uma ferramenta de TI de código aberto para gerenciar, automatizar, configurar servidores e, implantar aplicativos, a partir de uma localização central. Ele inclui sua própria linguagem declarativa para descrever a configuração do sistema.

- Control Node: Orquestra a configuração

- Manager Node: Hosts que receberão a configuração

- Inventário: Hosts que serão gerenciados ou o conjunto de Manager Nodes

- Módulos: Blocos de códigos que executam uma ação
    - Instalação de pacote
    - Cópia de arquivo
    - 

- Tasks
    - Modulo que será usado para executar uma ação

- Play
    - Definição de várias tarefas

- Playbook
    - Arquivo yaml que tem um conjunto de tarefas

- Ansible Ad rock
    - Forma mais simples
    - Comando executado utilizando um módulo para executar uma só tarefa
        - Copiar um arquivo

- Colections
    - Forma de impacotar e distribuir uma receita
    - https://docs.ansible.com/ansible/latest/collections/index.html#list-of-collections
    


## Fontes:

- [O mínimo que você precisa saber sobre ANSIBLE!](https://www.youtube.com/watch?v=y5eKF_XnGyE)

## Colections

[collections_using](https://docs.ansible.com/ansible/latest/user_guide/collections_using.html)

Próximo passo...[Instalação](./document/install.md)