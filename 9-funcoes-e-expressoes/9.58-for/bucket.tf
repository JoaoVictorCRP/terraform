resource "aws_s3_bucket" "bucket" {
  for_each = var.bucket_names
  bucket   = "${each.key}-terraform-${each.value}"
}