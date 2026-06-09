# Criando uma VPC com for-each

## Vantagens de usar o for_each

Abaixo algumas vantagens que na minha opinião fazem sentido o uso do for_each:

- Flexibilidade na Configuração: 
    Ao definir subnets em um mapa, você pode facilmente ajustar o CIDR ou a AZ sem duplicar código.
- Escalabilidade: 
    Adicionar novas subnets é simples e exige apenas a adição de um novo item ao mapa subnets, sem alterar o código principal do recurso.
- Manutenção: 
Como cada subnet é identificada por uma chave única (subnet1, subnet2, etc.), você pode gerenciar ou atualizar subnets específicas sem afetar outras.