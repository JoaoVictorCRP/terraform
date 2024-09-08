# Par de chaves
resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub") # A função file do terraform lê o conteúdo de um arquivo (baseando em seu caminho)

  # Para gerar uma chave ssh, utilize o comando: ssh-keygen -f {nome_da_chave}
}


# VM
resource "aws_instance" "vm" {
  ami                         = "ami-0e4d230445076ef91"
  instance_type               = "t3.nano"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id # Pegando o subnet id do remote state recuperado no main
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  tags = {
    Name = "vm-joao-terraform"
  }
}