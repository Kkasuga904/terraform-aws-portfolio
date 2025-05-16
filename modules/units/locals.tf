
locals {
  output_data = <<EOT
  {
  "instance_name":"your-instance-name"
  }
EOT

tags = {
   Environment = "your-environment"
   Project = "your-project"
}

common_tags = {
  Environment = "default"
  Project = "utility"
}

}


