# Bucket de logs
resource "aws_s3_bucket" "logs" {
  bucket = "${random_pet.bucket.id}-logs-${var.environment}"
  tags   = local.common_tags
}

# Bucket com os arquivos do NGINX
resource "aws_s3_bucket" "files-nginx" {
  bucket = "${random_pet.bucket.id}-nginx-${var.environment}"
  tags   = local.common_tags
}

resource "aws_s3_object" "files-nginx" {
  bucket = aws_s3_bucket.files-nginx.bucket
  key    = "nginx/${local.file}"
  source = local.file
  etag   = filemd5(local.file)
  tags   = local.common_tags
}

resource "aws_s3_bucket" "this" {
  bucket = "${random_pet.bucket.id}-${var.environment}"
  tags   = local.common_tags
}

resource "aws_s3_object" "this" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${local.ip_filepath}"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = "application/json"
  tags         = local.common_tags
}

resource "aws_s3_object" "random" {
  bucket       = aws_s3_bucket.this.bucket
  key          = "config/${random_pet.bucket.id}.json"
  source       = local.ip_filepath
  etag         = filemd5(local.ip_filepath)
  content_type = "application/json"
  tags         = local.common_tags
}