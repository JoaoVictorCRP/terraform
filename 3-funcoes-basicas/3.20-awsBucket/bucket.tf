resource "aws_s3_bucket" "bucket" { # o segunddo parametro é o nome que refenciará o recurso no código
<<<<<<< HEAD
  bucket = "joao-curso-terraform"

  tags = {
    Name        = "Meu bucket"
    Environment = "Dev"
  }
=======
    bucket = "joao-curso-terraform"

    tags = {
        Name = "Meu bucket"
        Environment = "Dev"
    }
>>>>>>> 0e1f6bbedb62a950288f262c0bfaaae5c31e3744
}