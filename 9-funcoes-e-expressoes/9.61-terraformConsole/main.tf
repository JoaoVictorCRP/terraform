terraform {
  required_version = ">= 1.3.0"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.66"
    }
  }

  backend "s3" {
    bucket = "joao-remote-state-terraform" 
    key    = "terraform-console/terraform.tfstate"
    region = "sa-east-1"
  }
}

provider "aws" {
  region = "sa-east-1"

  default_tags {
    tags = {
      owner      = "joaoVictorCarrijo"
      managed-by = "terraform"
    }
  }
}