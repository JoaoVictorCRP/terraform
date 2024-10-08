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
    region = local.region

    default_tags {
        tags = local.common_tags
    }                            
}