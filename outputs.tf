output "alb_dns_name" {
  description = "DNS name of the Application Load Balancer"
  value       = aws_lb.app_lb.dns_name
}

output "service_name" {
  description = "ECS service name"
  value       = aws_ecs_service.app.name
}

output "cluster_name" {
  description = "ECS cluster name"
  value       = aws_ecs_cluster.app.name
}

output "app_url" {
  description = "Public HTTPS URL to access the app"
  value       = "https://${aws_lb.app_lb.dns_name}"
}
