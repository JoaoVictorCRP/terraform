terraform {
    required_version = ">= 1.3.0"

    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.66"
        }
    }
}

provider "aws" {
    region = "sa-east-1"
    
    default_tags {
        tags = {
            owner = "joaoVictorCarrijo"
            managed-by = "terraform"
        }
    }
}

resource "aws_s3_bucket" "bucket" { # o segunddo parametro é o nome que refenciará o recurso no código
    bucket = "joao-curso-terraform"

    tags = {
        Name = "Meu bucket"
        Environment = "Dev"
    }
}