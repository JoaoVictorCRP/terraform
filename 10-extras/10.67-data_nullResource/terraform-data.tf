resource "terraform_data" "register_ip" {
  provisioner "local-exec" {
    command = "echo \"IP:${aws_instance.vm.public_ip} - ${timestamp()}\" >> instance_ips.txt"
  }

  triggers_replace = [
    aws_instance.vm.public_ip # forçará replacement (reexecução) quando o valor do ip publico mudar.
  ]
}