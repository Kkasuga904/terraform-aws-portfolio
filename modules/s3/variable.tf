variable "common_tags" {
  type        = map(string)
  description = "S3 バケットに適用する共通のタグ"
  default     = {}
}


variable "bucket_name" {
  type        = string
  description = "S3の名前"
}