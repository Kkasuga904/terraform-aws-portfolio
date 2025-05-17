
output "log_group_name" {
  value       = aws_cloudwatch_log_group.main.name
  description = "作成されたCloudWatchロググループ名"
}

