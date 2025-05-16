variable "instances" {
  type = map(object({
    ami_id             = string
    subnet_id          = string
    security_group_ids = list(string)
    instance_type      = optional(string, "t3.micro")
    key_name          = optional(string, null)
    tags              = optional(map(string), {})
    enable_monitoring  = optional(bool, false)
  }))
  description = "EC2インスタンスの設定"
}

variable "common_tags" {
  type    = map(string)
  default = {}
  description = "共通タグ"
}

variable "enable_monitoring" {
  type    = bool
  default = false
  description = "EC2モニタリング有効化フラグ"
}