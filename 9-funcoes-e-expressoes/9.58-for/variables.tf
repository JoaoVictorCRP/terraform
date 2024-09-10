# MAP para o for_each
variable "bucket_names" {
  description = "Nome dos buckets"
  type        = map(string)
  default = {
    "bucket-1" = "fotos",
    "bucket-2" = "documentos",
    "bucket-3" = "videos"
  }
}