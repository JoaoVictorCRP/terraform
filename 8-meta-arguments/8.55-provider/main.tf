terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "joao-remote-state-terraform"    # bucket criado na última aula (está na pasta "../5.31-bucketVersionado/")
    key    = "provider/terraform.tfstate" # diretório do arquivo chave
    region = "sa-east-1"
  }
}

# Provider default (No. 1)
provider "aws" {
  # Provider default não precisa de alias

  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "Joao Victor Carrijo"
      managed-by = "Terraform"
    }
  }
}

# Provider No. 2
provider "aws" {
  alias = "eua"

  region = "us-east-1"
  default_tags {
    tags = {
      owner      = "Joao Victor Carrijo"
      managed-by = "Terraform"
    }
  }
}

# Provider No. 3
provider "aws" {
  alias = "australia"

  region = "ap-southeast-2"
  default_tags {
    tags = {
      owner      = "Joao Victor Carrijo"
      managed-by = "Terraform"
    }
  }
}

module "vpc" {
  source = "./vpc"

  # Mapeamento de providers do módulo
  providers = {
    aws.provider_1 = aws.eua
    aws.provider_2 = aws.australia
  }
}