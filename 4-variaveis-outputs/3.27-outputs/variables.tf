variable "instance_type" {
    default = "t2.micro"
    description = "Tipo de instância"
    type = string
}

variable "ami_id" {
    default = "ami-0e4d230445076ef91"
    description = "ID da Imagem da máquina"
    type = string
}

variable "key_name" {
    default = "joaoLABS"
    description = "Par de chaves SSH"
    sensitive = true
    type = string
}

