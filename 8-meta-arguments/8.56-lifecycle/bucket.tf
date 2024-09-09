resource "aws_s3_bucket" "bucket" {
    bucket = "joao-lifecycle"

    lifecycle {
      create_before_destroy = true # Criará a nova versão antes de destruir a versão
      ignore_changes = [ 
        tags # ignorar mudanças no parâmetro "tags"
       ]
    }

    tags = {
        Name = "Meu bucket"
        Environment = "Dev"
    }
}