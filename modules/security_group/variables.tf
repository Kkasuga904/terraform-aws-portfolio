variable "vpc_id" {
  description = "VPC ID for the security group"
  type        = string
}

variable "common_tags" {
  description = "Common tags for resources"
  type        = map(string)
}
