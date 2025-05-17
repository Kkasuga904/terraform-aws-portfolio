module "ec2_instances" {
  source = "./modules/ec2"
  instances = var.ec2_instances
  common_tags       = var.common_tags
  enable_monitoring = var.enable_monitoring
}

output "instance_public_ips" {
  value = module.ec2_instances.instance_public_ips
  description = "Created EC2 instance IPs"
}

module "s3_bucket" {
  source = "./modules/s3" # S3 モジュールのパス
  bucket_name = var.s3_bucket_name
  common_tags = var.common_tags
  # その他の S3 バケットの設定
}



module "units" {
  source = "./modules/units"
  s3_bucket_name  = module.s3_bucket.bucket_name
}


module "cloudwatch" {
  source = "./modules/cloudwatch"

  instance_ids = local.monitored_instance_ids
  alarm_name   = "high_cpu_alarm"
  threshold    = 80
  period       = 300
}
