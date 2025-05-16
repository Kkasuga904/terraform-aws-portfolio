output "new_user_name" {
  value = aws_iam_user.new_user.name
}

output "user_policy_arn" {
  value = aws_iam_policy.user_policy.arn
}