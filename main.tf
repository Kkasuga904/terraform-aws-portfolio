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

output "root_s3_bucket_name" {
  value = module.s3_bucket.bucket_name
}


module "units" {
  source = "./modules/units"
}

