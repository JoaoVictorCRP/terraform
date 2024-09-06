output "instace_public_ip" {
    value = aws_instance.my_instance.public_ip
    # sensitive = true
}

# outputs são resultados e valores de saída de um processo do terraform

# Para visualizar os outputs após um terraform apply, basta digitar:
# terraform output

# Para imprimir SOMENTE o valor da variável, utilize o comando:
# terraform output -raw {nome_da_variavel}