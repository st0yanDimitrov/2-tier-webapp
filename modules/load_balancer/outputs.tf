################################
# Outputs Load Balancer
################################
output "lb_dns" {
  value = aws_lb.lb.dns_name
  description = "Public subnet load balancer DNS name"
}

output "lb_arn" {
  value = aws_lb.lb.arn
  description = "Public subnet load balancer ARN"
}

output "lb_id" {
  value = aws_lb.lb.id
  description = "Public subnet load balancer ID"
}

output "lb_target_group_arn" {
  value = aws_lb_target_group.lb_tg.arn
  description = "Public subnet load balancer target group ARN"
}

output "lb_target_group_id" {
  value = aws_lb_target_group.lb_tg.id
  description = "Public subnet load balancer target group ID"
}

