resource "aws_s3_bucket" "utility_bucket" {
  bucket = "utility-bucket-muroki2025" 
  tags = local.common_tags
}












