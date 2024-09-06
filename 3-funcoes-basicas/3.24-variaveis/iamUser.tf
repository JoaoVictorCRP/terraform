resource "aws_iam_user" "new_user" {
    name = "novo-usuario"
    tags = {
        tagImportada = aws_s3_bucket.bucket.tags.Name # referenciando atributos de outros blocos
    }
}