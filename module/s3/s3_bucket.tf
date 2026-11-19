resource "aws_s3_bucket" "terra-s3-bucket" {
  bucket = var.bucket_name
  tags = {
    Name = var.bucket_tag
    Environment = var.bucket_env
  }
}
resource "aws_s3_bucket_versioning" "bucket_versioning" {
  bucket = aws_s3_bucket.terra-s3-bucket.id
  versioning_configuration {
    status = var.bucket_versioning_status
  }
}

resource "aws_s3_bucket_lifecycle_configuration" "versioning_bucket_config" {
  bucket = aws_s3_bucket.terra-s3-bucket.id
  rule {

    #Lifecycle rule name
    id = var.bucket_lifecycle_name

    #rules apply to files inside config folder
    filter {
      prefix = var.bucket_lifecycle_prefix
    }

    #old versions will be deleted permanently after 90 days
    noncurrent_version_expiration {
      noncurrent_days = 90
    }

    #old versions will be moved to Standard-IA after 30 days
    noncurrent_version_transition {
      noncurrent_days = 30
      storage_class = "STANDARD_IA"
    }

    #old versions will be moved to Glacier after 60 days
    noncurrent_version_transition {
      noncurrent_days = 60
      storage_class = "GLACIER"
    }

    status = var.bucket_lifecycle_status
  }
}