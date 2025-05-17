variable "instance_ids" {
  type        = list(string)
  description = "監視対象のEC2インスタンスIDのリスト"
}

variable "alarm_name" {
  type        = string
  description = "アラーム名"
}

variable "threshold" {
  type        = number
  description = "アラームの閾値"
}

variable "period" {
  type        = number
  description = "アラームの監視周期（秒）"
}
