resource "aws_instance" "this" {
  for_each = var.instances
  ami = each.value.ami_id
  instance_type = each.value.instance_type
  subnet_id = each.value.subnet_id
  vpc_security_group_ids = each.value.security_group_ids
  key_name = each.value.key_name
  tags = merge(var.common_tags, each.value.tags, { Name = each.key })
  monitoring = var.enable_monitoring
  user_data = file("../New folder/userdata.sh") # 必要に応じてパスを修正

lifecycle {
  create_before_destroy = true
  #prevent_destroy = true
}
}

