resource "aws_s3_bucket" "bucket" {
    bucket = "variaveis-terraform"
 
    tags = {
        Name = "teste-variaveis"
    }
}

