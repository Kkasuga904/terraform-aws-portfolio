
output "bucket_name" {  # モジュール側で定義された出力名
  value = aws_s3_bucket.this.bucket  # リソース名と属性を確認
  description = "The name of the S3 bucket"
}

output "bucket_arn" {
  value = aws_s3_bucket.this.arn
  description = "S3 バケットの ARN"
}