terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  backend "s3" {
    bucket = "joao-remote-state-terraform"
    key    = "aws-vm-provisioners/terraform.tfsate"
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

data "terraform_remote_state" "vpc" { # Bloco do tipo data realiza a leitura de um terraform-remote-state
  backend = "s3"
  config = {
    bucket = "joao-remote-state-terraform"
    key    = "aws-vpc/terraform.tfstate"
    region = "sa-east-1"
  }
}