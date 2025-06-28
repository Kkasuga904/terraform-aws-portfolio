output "rds_endpoint" {
  value       = module.rds.endpoint
  description = "RDS(MySQL)インスタンスの接続エンドポイント"
}
