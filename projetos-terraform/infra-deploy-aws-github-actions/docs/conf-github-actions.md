# Configuração do Github-Actions

## Criação das Secrets

Por questão de segurança é fortemente recomendado o uso de secrets para o projeto.

## No caso deste projeto foram usados:

    SSH_PRIVATE_KEY: ${{secrets.SSH_PRIVATE_KEY}}
    REMOTE_HOST: ${{secrets.REMOTE_HOST}}
    REMOTE_USER: ${{secrets.REMOTE_USER}}
    TARGET: ${{secrets.TARGET_DIR}}

## As secrets poderão ser definidas acessando `settings`.

![Settings](./images/settings.png)

Clicar em Secrets and variables

Depois em Actions

Adicionar as Secrests, clicando em `New repository secret`.

![Security](./images/security.png)

Agora basta adicionar as secrets, com chave e o valor correspondente

![Add](./images/add.png)

Chave privada, .pem que foi criada na criação da instância

![SSH_PRIVATE_KEY](./images/SSH_PRIVATE_KEY.png)

Nome do Host da AWS

![REMOTE_HOST](./images/REMOTE_HOST.png)

Nome do usuário da AWS

![REMOTE_USER](./images/REMOTE_USER.png)

Caminho para onde será enviado os arquivos

![Add](./images/TARGET_DIR.png)

Todas as secrets configuradas

![All](./images/all.png)

## JOB executado

https://github.com/rfahham/infra-deploy-aws-github-actions/actions/runs/8664288194