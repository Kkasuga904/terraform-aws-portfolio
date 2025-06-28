locals {
  target_date = "2025-05-11"
  region      = var.aws_region

  name = "example-instance"
  id   = 123
  tags = {
    Environment = "dev"
    Region      = local.region
  }


  ips    = ["10.0.0.1", "10.0.0.2"]
  enable = true



  output_data = jsonencode({
    instance_name = local.name
    instance_id   = local.id
    resource_tags = local.tags
    ip_addresses  = local.ips
    is_enabled    = local.enable
    target        = local.target_date
    aws_region    = local.region
  })


  monitored_instance_ids = [
    for name, config in var.ec2_instances :
    module.ec2_instances.instance_ids[name]
    if try(config.enable_monitoring == true, false)
  ]

}
