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

module "network" {
  # Diretório do módulo
  source = "./network"

  # Atribuindo variaveis
  cidr_vpc    = "10.0.0.0/16"
  cidr_subnet = "10.0.1.0/24"
  environment = "dev"
}