# Criando uma VM no Virtualbox com Ansible

https://github.com/iagoferreirati/live-devops

## Requisitos
    - VirtualBox (local)
    - Vagrant (local)
    - Packer (Cloud) - https://www.packer.io/
    - https://viacep.com.br/exemplo/jquery/

## Executar o Vagrantfile
    $ vagrant up

## Executar o Packer
    export AWS_ACCESS_KEY_ID=
    export AWS_SECRET_ACCESS_KEY=
    packer build -var "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" -var "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" ./packer/build.json# projetos-ansible
