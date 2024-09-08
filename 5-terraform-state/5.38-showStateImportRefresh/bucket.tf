// 3 Buckets com 3 nomes distintos

resource "aws_s3_bucket" "bucket_1" {
  bucket = "joaovictor-terraform-commands-1"
}

resource "aws_s3_bucket" "bucket_2" {
  bucket = "joaovictor-terraform-commands-2"
}

resource "aws_s3_bucket" "bucket_3" {}

# Bloco de importação (após terraform state rm do bucket_3)
import {
    to = aws_s3_bucket.bucket_3
    id = "joaovictor-terraform-commands-3"
}