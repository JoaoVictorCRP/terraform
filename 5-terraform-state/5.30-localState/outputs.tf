output "bucket_id" {
  description = "ID do Bucket criado na AWS."
  value       = aws_s3_bucket.bucket.id
}

output "bucket_arn" {
  description = "ARN do Bucket criado na AWS."
  value       = aws_s3_bucket.bucket.arn
}