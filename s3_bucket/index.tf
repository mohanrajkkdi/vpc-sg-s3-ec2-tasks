module "s3_bucket_module" {
  source = "../module/s3"
  bucket_name = var.bucket_name
  bucket_tag = var.bucket_tag
  bucket_env = var.bucket_env
  bucket_versioning_status = var.bucket_versioning_status
  bucket_lifecycle_name = var.bucket_lifecycle_name
  bucket_lifecycle_prefix = var.bucket_lifecycle_prefix
  bucket_lifecycle_status = var.bucket_lifecycle_status
}