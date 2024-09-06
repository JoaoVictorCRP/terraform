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
    region = var.location

    default_tags {
        tags = local.common_tags # OBSERVAÇÃO: local, no singular, e não locals, como foi colocado no arquivo locals.tf
    }                            # Já que estamos utilizando apenas UMA variável local
}