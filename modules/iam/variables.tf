# modules/iam/variables.tf

variable "iam_role_name" {
  type        = string
  description = "IAMロールの名前"
}

variable "iam_policy_name" {
  type        = string
  description = "S3読み取り専用ポリシーの名前"
}

variable "common_tags" {
  type        = map(string)
  description = "共通のタグ"
  default     = {}
}


variable "s3_bucket_name" {
  type        = string
  description = "S3 バケットの名前"
}

variable "bucket_suffix_result" {
  type        = string
  description = "ランダムなサフィックス"
}