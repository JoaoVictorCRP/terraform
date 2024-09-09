terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "joao-remote-state-terraform"
    key = "commands/terraform.tfsate" # Para configurar um backend dinâmico, este bloco deve estar vazio.
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
        owner = "Joao Victor Carrijo"
        managed-by = "Terraform"
    }
  }
}

