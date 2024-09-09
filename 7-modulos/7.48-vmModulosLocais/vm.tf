# Par de chaves
resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")
}


# VM
resource "aws_instance" "vm" {
  ami                         = "ami-0e4d230445076ef91"
  instance_type               = "t3.nano"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = module.network.subnet_id # Pegando o subnet id do output do modulo network
  vpc_security_group_ids      = [module.network.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "vm-joao-terraform"
  }
}