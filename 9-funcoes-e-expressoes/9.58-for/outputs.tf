output "id_dos_buckets" {
  description = "ID dos buckets criados na AWS."
  value       = [for b in aws_s3_bucket.bucket : b.id]
}

output "dominio_dos_buckets" {
  description = "Domínio dos buckets criados na AWS."
  value       = [for b in aws_s3_bucket.bucket : b.bucket_domain_name]
}