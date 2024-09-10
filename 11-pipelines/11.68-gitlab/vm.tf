# Par de chaves
resource "aws_key_pair" "key" {
  key_name   = "aws-key-pipelines"
  public_key = var.aws_key_pub

}


# VM
resource "aws_instance" "vm" {
  ami                         = "ami-0c5410a9e09852edd"
  instance_type               = "t3.nano"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id # Pegando o subnet id do remote state recuperado no main
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "vm-joao-terraform"
  }
}