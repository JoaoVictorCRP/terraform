resource "aws_s3_bucket" "bucket" {
    count = var.environment=="prod" ? 1:0 # Não cria esse recurso se não estiver no ambiente de producao
    bucket = "condicionais-terraform-lab"
}