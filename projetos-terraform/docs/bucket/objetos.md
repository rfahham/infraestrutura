# Upload de arqruivos via console

Acessar o bucket
    Carregar
        Selecionar aqruivos

## para acessar os objetos

1 -  Bloquear acesso público (configurações do bucket)

    Editar
    O acesso público é concedido a buckets e objetos por meio de listas de controle de acesso (ACLs), políticas de bucket, políticas de ponto de acesso ou todas elas. Para garantir o bloqueio do acesso público a todos os seus objetos e buckets do S3, ative a opção Bloquear todo o acesso público. Essas configurações se aplicam apenas a este bucket e seus respectivos pontos de acesso. A AWS recomenda ativar a opção Bloquear todo o acesso público. Porém, antes de aplicar qualquer uma dessas configurações, verifique se as aplicações funcionarão corretamente sem acesso público. Caso precise de algum nível de acesso público para os buckets ou para os objetos dentro deles, personalize as configurações abaixo de acordo com seus casos de uso de armazenamento específicos.

    Bloquear todo o acesso público
    >> Desativar
    Configurações de bloqueio do acesso público individuais deste bucket

2 - Adicionar a Política do Bucket

    {
        "Version": "2012-10-17",
        "Statement": [
            {
                "Sid": "AllowPublicAccess",
                "Effect": "Allow",
                "Principal": "*",
                "Action": "s3:*",
                "Resource": [
                    "arn:aws:s3:::bucket-rfahham",
                    "arn:aws:s3:::bucket-rfahham/*"
                ]
            }
        ]
    }
