variable "environment" { # Criaremos uma condicional que verifique qual ambiente estamos usando no momento
  description = "Ambiente no quals o recursos serão criados"
  type        = string
}

variable "ami_id" {
  default     = "ami-0e4d230445076ef91"
  description = "ID da Imagem da máquina"
  type        = string
}