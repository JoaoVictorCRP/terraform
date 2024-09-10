output "vm_ip" {
  description = "IP da máquina virtual na AWS"
  value       = aws_instance.vm.public_ip
}