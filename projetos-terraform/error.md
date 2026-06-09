# Erros verificados e corrigidos durante o processo

Ao criar o bucket

    Initializing the backend...
    ╷
    │ Error: Unsupported Terraform Core version
    │ 
    │   on main.tf line 2, in terraform:
    │    2:   required_version = "1.7.3"
    │ 
    │ This configuration does not support Terraform version 1.7.4. To proceed, either choose another supported Terraform version or update this version constraint. Version constraints are normally set for good reason, so
    │ updating the constraint may lead to other errors or unexpected behavior.

    Solução

        required_version = "1.7.4"

