# Par de chaves
resource "aws_key_pair" "key" {
  key_name   = "aws-key-provisioners-vm"
  public_key = file("./aws-key.pub") 

}


# VM
resource "aws_instance" "vm" {
  ami                         = "ami-0c5410a9e09852edd"
  instance_type               = "t3.nano"
  key_name                    = aws_key_pair.key.key_name
  subnet_id                   = data.terraform_remote_state.vpc.outputs.subnet_id # Pegando o subnet id do remote state recuperado no main
  vpc_security_group_ids      = [data.terraform_remote_state.vpc.outputs.security_group_id]
  associate_public_ip_address = true

  provisioner "local-exec" {
    command = "echo ${self.public_ip} >> public_ip.txt" # Criar um arquivo de texto com o IP
  }

  provisioner "remote-exec" {
    inline = [ 
      "echo subnet_id: ${data.terraform_remote_state.vpc.outputs.subnet_id} >> /tmp/network_info.txt",
      "echo security_group_id: ${data.terraform_remote_state.vpc.outputs.security_group_id} >> /tmp/network_info.txt"
    ]
  }

  provisioner "file" {
    source = "./teste.txt" # Este arquivo, que será salvo...
    destination = "/tmp/exemplo.txt" # Neste destino
  }

  provisioner "file" {
    content = "AMI utilizada: ${self.ami}" # Conteúdo bruto que será salvo...
    destination = "/tmp/ami.txt"           # Neste destino
  }

  # Conexão utilizado pelos provisioners
  connection {
    type = "ssh"
    user = "ubuntu"
    private_key = file("./aws-key")
    host = self.public_ip
  }

  tags = {
    Name = "vm-joao-terraform"
  }
}