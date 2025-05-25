variable "subnet_ids" {
  description = "List of subnet IDs for ALB"
  type        = list(string)
}

variable "alb_sg_id" {
  description = "Security group ID for ALB"
  type        = string
}

variable "vpc_id" {
  description = "VPC ID for the target group"
  type        = string
}

variable "ec2_instance_id" {
  description = "EC2 instance ID to register with the target group"
  type        = string
}
