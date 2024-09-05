# Blocos do terraform

terraform {
    # configurações inicias aqui
}

provider "aws" {
  # detalhes do provider
}

resource "aws_instance" "vm-1" {
  # Aqui toda a configuração da instancia
}

data "aws_ami" "image" {
  # Configuração da imagem
}

module "modulo_exemplo" {
  # código do módulo aqui
}

variable "nome_da_instancia" {
  # valores da variavel aqui
}

output "name" {
  # saída de informacoes
}

locals {
  # Bloco usado para armazenar código reutilizados com frequencia
}