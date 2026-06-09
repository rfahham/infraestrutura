output "arn" {
  description = "The ARN of the load balancer."
  value       = aws_lb.sh_lb.arn
}

output "arn_suffix" {
  description = "The ARN suffix for use with CloudWatch Metrics."
  value       = aws_lb.sh_lb.arn_suffix
}

output "name" {
  description = "The name of the load balancer."
  value       = element(split("/", aws_lb.sh_lb.name), 2)
}

output "dns_name" {
  description = "The DNS name of the load balancer."
  value       = aws_lb.sh_lb.dns_name
}