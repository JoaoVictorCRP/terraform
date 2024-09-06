variable "location" {
    description = "Região onde os recursos serão criados na AWS" 
    type = string
    default = "sa-east-1"
}

variable "instanceType" {
    default = "t2.micro"
}