terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "joao-remote-state-terraform"
    key    = "aws-vm-modulos-locais/terraform.tfsate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "Joao Victor Carrijo"
      managed-by = "Terraform"
    }
  }
}

# Modulo vindo do registry (https://registry.terraform.io/modules/terraform-aws-modules/vpc/aws/latest)
module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.13.0"
}
# Com esse módulo escrito aqui, é só digitar "terraform get" no terminal para fazer o download do modulo exclusivamente
# Claro que o módulo também será baixado quando o comando "terraform init" for executado, mas o "get" com que o modulo seja baixado indivualmente