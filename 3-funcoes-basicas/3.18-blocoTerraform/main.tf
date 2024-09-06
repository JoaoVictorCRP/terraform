# Read the docs: https://developer.hashicorp.com/terraform/language/settings
terraform {
    required_version = "~> 1.0.0" # Operador ~> indica o uso da versão definida, porém podendo variar entre os patches (ou seja: v1.x.x)
    required_providers {
        aws = {
            version = "1.0"
            source = "hasicorp/aws" # origem do provedor (cada provedor tem sua própria string de source, no caso da AWS é hashicorp/aws)
        }

        azurerm = {
            version = "2.0"
            source = "hashicorp/azurerm"
        }

    }

    backend "s3" { # entre aspas fica o backend a ser utilizado
      
    }
}