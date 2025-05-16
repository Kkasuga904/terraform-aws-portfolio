resource "aws_s3_bucket" "utility_bucket" {
  bucket = var.utility_bucket_name
  tags = local.common_tags
}












