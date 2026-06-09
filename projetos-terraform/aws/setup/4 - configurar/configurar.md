# Usuário

## Instalando

[Install or update to the latest version of the AWS CLI](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html)

### Local onde está os arquivos doo AWS CLI

```bash
which aws
/usr/local/bin/aws
```

### Verificando a versão

```bash
aws --version
aws-cli/2.15.27 Python/3.11.8 Linux/4.4.0-19041-Microsoft exe/x86_64.ubuntu.20 prompt/off
```

## Configurando

```bash
aws configure --profile "terraform"

AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
Default region name [None]: us-east-1
Default output format [None]: json
```

## Listando 

```bash
aws configure list

      Name                    Value             Type    Location
      ----                    -----             ----    --------
   profile                <not set>             None    None
access_key     ****************F34U shared-credentials-file    
secret_key     ****************aIYh shared-credentials-file    
    region                us-east-1      config-file    ~/.aws/config
```

## Listar Credentials

```bash
cat ~/.aws/credentials 

[terraform]
AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
[default]
AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
```