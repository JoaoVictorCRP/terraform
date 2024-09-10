# Em pipelines, o ideal é salvar as chaves de VM como variável de ambiente.
variable "aws_key_pub" {
  description = "Chave pública para a máquina na AWS"
  type        = string
}