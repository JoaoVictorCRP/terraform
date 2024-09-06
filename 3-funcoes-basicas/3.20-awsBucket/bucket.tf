resource "aws_s3_bucket" "bucket" { # o segunddo parametro é o nome que refenciará o recurso no código
  bucket = "joao-curso-terraform"

  tags = {
    Name        = "Meu bucket"
    Environment = "Dev"
  }
}