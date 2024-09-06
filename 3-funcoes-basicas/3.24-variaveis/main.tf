terraform {
    required_version = ">= 1.0.0"

    required_providers {
        aws = {
            source = "hashicorp/aws"
            version = "~> 5.66"
        }
    }
}


provider "aws" {
    region = var.location # Para obter o valor de uma variável, basta utilizar referenciar o nome da variável com "var"

    default_tags {
        tags = {
            owner = var.ownerName
            managed-by = "terraform"
        }
    }
}