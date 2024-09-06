ami_id = "ami-0c5410a9e09852edd"

# Arquivos tfvars são usados para atribuir ou reatribuir valores às variáveis

# Para estar utilizando um arquivo .tfvars específico, passe-o como argumento com o na linha de comando:
# terraform apply -var-file="dev.tfvars"


# Você também pode estar realizando atribuições diretamente na execução do comando com o parametro -var
# terraform apply -var="instance_type=t2.large"

# OBSERVAÇÃO: PASSAR O VALOR DA VARIÁVEL NA LINHA DE COMANDO TEM UMA PRIORIDADE MAIOR DE ATRIBUIÇÃO (Se existir uma outra atribuição em .tfvars, ela será ignorada)