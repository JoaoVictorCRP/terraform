variable "location" {
    # É uma boa prática colocar uma descrição na variável, desta forma um outro programador identificará melhor o uso da variável
    description = "Região onde os recursos serão criados na AWS" 
    type = string
    default = "sa-east-1"
}

variable "ownerName" {
    description = "Nome do dono do bucket"
    type = string
    default = "Joao Victor Carrijo"
}


/* Blocos de variáveis possuem os seguintes argumentos:
- default => Um valor padrão, que por consequência tornará a variável opcional.
- type => Tipo da variável (string, number, bool etc.).
- description => Documentação da variável.
- validation => Bloco para definição de uma validação do tipo da variável.
- sensitive => Marca a variável como "sensível", isso fará com que o valor dela não seja exibido em arquivos de saída ou configurações
- nullable => Especifica se a variável pode ser nula dentro do módulo.
*/