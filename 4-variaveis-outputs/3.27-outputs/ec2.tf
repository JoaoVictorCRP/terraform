resource "aws_instance" "my_instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    key_name = var.key_name
    tags = local.common_tags
    associate_public_ip_address = true # Permite que o terraform mostre a saída do IP público da instancia
    vpc_security_group_ids = []
}

resource "aws_security_group" "allow_ssh" {
    name_prefix = "allow_ssh"
    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = local.any_ip
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1" # "-1" permite todos os protocolos
        cidr_blocks = local.any_ip
    }
}