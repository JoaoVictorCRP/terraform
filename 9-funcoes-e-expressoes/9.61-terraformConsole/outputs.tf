output "bucket_domain" {
  description = "Domínio da bucket criada na AWS."
  value       = aws_s3_bucket.bucket.bucket_domain_name
}