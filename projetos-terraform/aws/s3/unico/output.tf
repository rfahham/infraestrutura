output "bucket_name" {
  value       = aws_s3_bucket.this.bucket
  description = "Nome do bucket"
}

output "bucket_arn" {
  value       = aws_s3_bucket.this.arn
  description = "Valor de identificacao dentro da AWS (Amazon Resource Name)"
}

output "bucket_domain_name" {
  value       = aws_s3_bucket.this.bucket_domain_name
  description = "Dominio do bucket"
}