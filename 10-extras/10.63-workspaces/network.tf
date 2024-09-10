# VPC
resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-tf-${terraform.workspace}-joao" # Pegando o nome do workspace
  }
}

# Subrede
resource "aws_subnet" "subnet" {
  count = terraform.workspace == "prod" ? 3 : 1 # Verifica workspace
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-terraform-joao-${count.index}"
  }
}