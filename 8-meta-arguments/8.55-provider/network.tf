# Subrede Brasil
resource "aws_subnet" "subnet-brasil" {
  # Se o provider não é especificado, ele usa o default (brasil)
  vpc_id     = module.vpc.vpc_id_default
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-terraform-provider-saopaulo"
  }
}


# Subrede EUA
resource "aws_subnet" "subnet-eua" {
  # Especificando o provider
  provider = aws.eua

  vpc_id     = module.vpc.vpc_id_provider_1
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-terraform-provider-saopaulo"
  }
}


# Subrede Australia
resource "aws_subnet" "subnet-australia" {
  # Especificando o provider
  provider = aws.australia

  vpc_id     = module.vpc.vpc_id_provider_2
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "subnet-terraform-provider-saopaulo"
  }
}
