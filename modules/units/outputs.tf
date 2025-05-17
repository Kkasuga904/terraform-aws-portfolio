

output "s3_bucket_name_output" {
 value = var.s3_bucket_name
 description = "作成したS3パケットの名前"
}

output "combined_data_json" {
 value = local.output_data
 description = "複数JSON"
}

output "instance_name_from_json" {
 value = jsondecode(local.output_data).instance_name
 description = "抽出"
}

output "resource_tags_json_pretty" {
 value = jsonencode(local.tags)
 description = "整形された"
}
