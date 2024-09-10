# Par de chaves
resource "aws_key_pair" "key" {
  key_name   = "aws-key"
  public_key = file("./aws-key.pub")
}

resource "aws_instance" "my_instance" {
  count = var.environment == "prod" ? 2 : 1 # Se é produção, cria duas instnacias, se não, cria uma só.

  ami           = var.ami_id
  instance_type = var.environment != "prod" ? "t2.micro" : "t3.nano" # Lógica de negação: se não é prod, use t2. Caso contrário, t3.
  key_name      = aws_key_pair.key.key_name
  tags = {
    Name : "lab-joao-tf-${count.index}"
  }
  associate_public_ip_address = true # Permite que o terraform mostre a saída do IP público da instancia
  vpc_security_group_ids      = []
}

resource "aws_security_group" "allow_ssh" {
  name_prefix = "allow_ssh"
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # "-1" permite todos os protocolos
    cidr_blocks = ["0.0.0.0/0"]
  }
}