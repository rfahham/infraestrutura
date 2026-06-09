# TFENV - Linux

Gerenciador de versões do `Terraform`

## Instalação

### Clone os arquivos de origem em ~/.tfenv

```bash
git clone https://github.com/tfutils/tfenv.git ~/.tfenv
```

###  Adicione ~/.tfenv/binário seu $PATH

```bash
echo 'export PATH="$HOME/.tfenv/bin:$PATH"' >> ~/.bash_profile
```

### Crie um link simbólico para o executável

```bash
sudo ln -s ~/.tfenv/bin/* /usr/local/bin
```

### Para obter a versão instalada

```bash
tfenv --version
```

### Para obter uma lista de todos os comandos disponíveis

```bash
tfenv
```

### Para listar todas as versões instaladas

```bash
tfenv list
```

### Para listar todas as versões instaláveis ​​de repositórios remotos

```bash
tfenv list-remote
```

### Para instalar uma versão específica do Terraform

```bash
tfenv install [version]
```

### Para desinstalar uma versão específica

```bash
tfenv uninstall [version]
```

### Para mudar para uma versão específica

```bash
tfenv use [version]
```

### Para escrever a versão ativa atual a ser ./.terraform-versionusada

```bash
tfenv pin
```

### Desinstalar
Excluir entrada do ~/.bash_profile

```bash
grep -v 'export PATH="$HOME/.tfenv/bin:$PATH"' ~/.bash_profile > ~/.bash_profile_tmp && mv ~/.bash_profile_tmp ~/.bash_profile
```

### Desvincular link simbólico

```bash
sudo unlink /usr/local/bin/tfenv
```

### Excluir ~/.tfenv

```bash
rm -rf ~/.tfenv/
```
