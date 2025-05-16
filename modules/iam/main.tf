resource "aws_iam_role" "my_role"{
  name = var.iam_role_name
  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = "sts:AssumeRole",
        Effect = "Allow",
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })
  tags = var.common_tags
}

resource "random_string" "bucket_suffix" {
  length  = 8
  special = false
  upper   = false
}

resource "aws_iam_policy" "s3_read_only_policy"{
  name = var.iam_policy_name
  description = "Allow read-only access to the specified S3 bucket"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "s3:getObject",
          "s3:ListBucket"
        ],
        Effect = "Allow",
        Resource = [
          "arn:aws:s3:::${var.s3_bucket_name}", # モジュールから参照
          "arn:aws:s3:::${var.s3_bucket_name}/*", # モジュールから参照
        ],
      },
    ]
  })
}

resource "aws_iam_role_policy_attachment" "s3_read_only_attachment" {
  role = aws_iam_role.my_role.name
  policy_arn = aws_iam_policy.s3_read_only_policy.arn
}

resource "aws_iam_user" "new_user" {
  name = "my-terraform-user"
  tags = var.common_tags
}

resource "aws_iam_policy" "user_policy"{
  name = "user-read-s3-read-only-${random_string.bucket_suffix.result}" # ここで random_string は定義されていません
  description = "IAM policy to allow user read-only access to a specific S3 bucket"
  policy = jsonencode({
    Version = "2012-10-17",
    Statement = [
      {
        Action = [
          "s3:GetObject",
          "s3:ListBucket"
        ],
        Effect = "Allow",
        Resource = [
          "arn:aws:s3:::${var.s3_bucket_name}", # モジュールから参照
          "arn:aws:s3:::${var.s3_bucket_name}/*"  # モジュールから参照
        ],
      },
    ]
  })
}