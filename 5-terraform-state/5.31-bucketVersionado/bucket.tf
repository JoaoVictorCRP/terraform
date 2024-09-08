resource "aws_s3_bucket" "bucket" {
  bucket = "joao-remote-state-terraform"
}

resource "aws_s3_bucket_versioning" "versioning_example" {
  bucket = aws_s3_bucket.bucket.id # referenciando o bucket criado (para habilitar o versionamento dele)
  versioning_configuration {
    status = "Enabled"
  }
}