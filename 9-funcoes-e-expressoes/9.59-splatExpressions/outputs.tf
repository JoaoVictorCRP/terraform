output "subnets_id" {
  value       = aws_subnet.subnet[*].id # Splat Expression
  description = "ID das subnets criadas na AWS"
}