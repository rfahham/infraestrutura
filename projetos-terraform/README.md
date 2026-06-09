# Terraform

Ferramente de alto nível de orquestração de infraestrutura

## Principais características

### Infraestrutura como Código(IaC)

- Open source e declarativo;
- Permite versionamento(evolução e automação);
- Indepontente;
- Sintaxe high-level e reutilozável;
- Paridade de ambiente (DEV,QA, PROD).

### Planos de exeução

- Segurança e previsibilidade;
- Separação de planejamento e aplicação.

### Híbrido

- Agnóstico (AWS, GCP, AZURE, etc);
- Permite deployar em ambos providers simultaneamente;

### Casos de Uso

- Criar ou provisionar uma nova infraestrutura;
- Gerenciar a infraestrutura existente;
- Replicar a infraestrutura.

### Como funciona ?

#### O Terraform usa duas fontes de entrada

- Arquivos de configuração (estado desejado)
- O estado atual, que é gerenciado pelo Terraform.

### Providers

[Featured Providers](https://registry.terraform.io/)

Os provedores expõem recursos, o que possibilita a criação de infraestrutura em todas as plataformas:

- IaaS: AWS, GCP, AZURE, ORACLE
- PaaS: Kubernetes, Heroku, Digital Ocean
- Saas: New Relic, Datadog

## Instalação

[Terraform](./docs/terraform/install.md)

[tfenv](./docs/terraform/tfenv/tfenv.md) - Gerenciador de versões do Terraform

[Implementação](./doc/terraform/conf.md) - Alguns exemplo de implementação do Terraform

## Comandos terraform

[terraform format](.docs/terraform/format.md) - Formata o arquivo do Terraform

[terraform validate](./docs/terraform/validate.md) - Valida a receita do Terraform

[terraform init](./docs/terraform/init.md) - Valida se o arquivo tem alguma inconsistência

[terraform plan](./docs/terraform/plan.md) - Verifica o Plano que será executado

[terraform apply](./docs/terraform/apply.md) - Aplica a receita do Terraform

[terraform destroy](./docs/terraform/destroy.md) - Destrou a infra criada com o Terrafomr

## Comandos Bucket

[Criar](./docs/bucket/resgitry.md)

[Listar](./docs/bucket/listar.md)

[Upload e Acesso para os objetos](./docs/bucket/objetos.md)
