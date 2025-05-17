resource "aws_cloudwatch_metric_alarm" "cpu_alarm" {
  for_each            = toset(var.instance_ids)
  alarm_name          = "${var.alarm_name}-${each.key}"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = var.period
  statistic           = "Average"
  threshold           = var.threshold
  alarm_description   = "EC2 CPU usage alarm"
  dimensions = {
    InstanceId = each.value
  }
  actions_enabled     = false
}

resource "aws_cloudwatch_log_group" "main" {
  name              = "/aws/ec2/high_cpu_alarm"
  retention_in_days = 7
}







