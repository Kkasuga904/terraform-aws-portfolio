
variable "aws_region" {
type = string
description = "AWSリージョン"
default = "ap-northeast-1"
} 

variable "s3_bucket_name" {
type = string
description = "bakeltutodayo"
default = "my-unique-bucket-123456789012-202505011920-abcdefg"
} 

variable "iam_role_name" {
type = string
description = "EC2IAMロール名"
default = "default-ec2-role"
} 

variable "iam_policy_name" {
type = string
description = "S3読み取りポリシー名"
default = "s3-readonly-policy"
} 

variable "common_tags" {
type = map(string)
description = "tttaaagg"
default = {
Environment = "dev"
Project = "terraform-example"
}
} 

variable "enable_monitoring" {
  type = bool
  description = "EC2yuukou"
  default = false
}


variable "ec2_instances" {
  description = "EC2インスタンスの設定"
  type = map(object({
   instance_type = optional(string,"t3.micro")
   subnet_id = string
   security_group_ids = list(string)
   key_name = optional(string,null)
   tags = optional(map(string),{})
   enable_monitoring = optional(bool)
   ami_id = string
  }))
  default = {
    "server-a" = {
    subnet_id = "subnet-0e24a350443a6602a"
    security_group_ids = ["sg-083e16a8d6e7fff6d"]
    ami_id = "ami-07bff4033fbfe2317"
    instance_type = "t3.micro"
    enable_monitoring = false
    tags = {
      Name = "server-a"
      Environment = "dev"
    }
    }

     "server-b" = {
    subnet_id = "subnet-0697a8a1dcc2172e9"
    security_group_ids = ["sg-083e16a8d6e7fff6d"]
    ami_id = "ami-07bff4033fbfe2317"
    instance_type = "t3.micro"
    key_name = "deployer-key"
    tags = {
      Name = "server-b"
      Environment = "prod"
    }
    }
  }
}











