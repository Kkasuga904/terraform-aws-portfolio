resource "random_string" "bucket_suffix" {
  length = 8
  special = false
  upper = false
}

data "aws_caller_identity" "current" {}

resource "aws_s3_bucket" "this"{
  bucket = "your-unique-bucket-name-${data.aws_caller_identity.current.account_id}-${random_string.bucket_suffix.result}"
  force_destroy = false
  tags = var.common_tags
}

resource "aws_s3_bucket_ownership_controls" "my_ownership_controls"{
  bucket = aws_s3_bucket.this.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "my_bucket_acl"{
  bucket = aws_s3_bucket.this.id
  acl = "private"
  depends_on = [aws_s3_bucket_ownership_controls.my_ownership_controls]
}

resource "aws_s3_bucket_versioning" "my_bucket_versioning" {
  bucket = aws_s3_bucket.this.id
  versioning_configuration {
    status = "Enabled"
  }
}

