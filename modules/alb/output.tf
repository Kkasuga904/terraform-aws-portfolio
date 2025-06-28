output "alb_dns_name" {
  value       = aws_lb.main.dns_name
  description = "アプリケーションロードバランサーのパブリックDNS名（このURLでアクセス可能）"
}