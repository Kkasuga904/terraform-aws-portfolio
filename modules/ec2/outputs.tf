output "instance_ids" {
  value       = [for instance in aws_instance.this : instance.id]
  description = "EC2インスタンスのID一覧"
}

output "instance_public_ips" {
  value       = [for instance in aws_instance.this : instance.public_ip]
  description = "EC2インスタンスのパブリックIP一覧"
}
