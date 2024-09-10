# VPC
resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-terraform-joao"
  }
}

# Subrede
resource "aws_subnet" "subnet" {
  vpc_id     = aws_vpc.vpc.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-terraform-joao"
  }
}

# IGW
resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = "igw-terraform-joao"
  }
}

# Route table
resource "aws_route_table" "route_table" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.internet_gateway.id
  }

  tags = {
    Name = "route-table-terraform-joao"
  }
}

# Associção de route table
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet.id
  route_table_id = aws_route_table.route_table.id
}

# Security Group
resource "aws_security_group" "security_group" {
  name        = "security-group-terraform"
  description = "Permitir acesso na porta 22"
  vpc_id      = aws_vpc.vpc.id

  dynamic "ingress" { # bloco dinâmico de ingress
    for_each = var.ports # parametro

    content { # processamento em cima do parametro
      description = ingress.value.description
      from_port = ingress.key # nome do bloco (nesse caso, ingress) é o mesmo que o each em um bloco de for_each.
      to_port = ingress.key
      protocol = "tcp"
      cidr_blocks = ingress.value.cidr_blocks
      # Verifique a estrutura em "varibles.tf" (key = porta, value = objeto com descrição e CIDR block)
    }
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "security-group-terraform"
  }
}
