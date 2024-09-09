# VPC do provider default
resource "aws_vpc" "default" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-terraform-provider"
  }
}

# VPC do provider 1
resource "aws_vpc" "provider_1" {
  provider = aws.provider_1

  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-terraform-provider"
  }
}

# VPC do provider 2
resource "aws_vpc" "provider_2" {
  provider = aws.provider_2

  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-terraform-provider"
  }
}
