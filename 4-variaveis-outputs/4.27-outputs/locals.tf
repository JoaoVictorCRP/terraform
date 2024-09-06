locals {
    common_tags = {
        owner = "Joao Victor Carrijo"
        managed-by = "terraform"
    }

    region = "sa-east-1"

    any_ip = ["0.0.0.0/0"]
}