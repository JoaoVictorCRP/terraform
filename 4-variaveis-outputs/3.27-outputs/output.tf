output "instace_public_ip" {
    value = aws_instance.my_instance.public_ip
    # sensitive = true
}

# outputs são resultados e valores de saída de um processo do terraform