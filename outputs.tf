
output "s3_bucket_name_output" {
 value = module.s3_bucket.bucket_name
 description = "作成したS3パケットの名前"
}

output "combined_data_json" {
 value = module.units.combined_data_json
 description = "複数JSON"
}

output "instance_name_from_json" {
 value = module.units.instance_name_from_json
 description = "抽出"
}

output "resource_tags_json_pretty" {
 value = module.units.resource_tags_json_pretty
 description = "整形された"
}

output "root_s3_bucket_name" {
  value = module.s3_bucket.bucket_name
}