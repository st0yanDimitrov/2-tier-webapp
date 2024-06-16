################################
# Outputs
################################

#Auto scaling group
################################
output "auto_scaling_group_name" {
  value = aws_autoscaling_group.asg.name
  description = "Auto scaling group name"
}

output "auto_scaling_group_id" {
  value = aws_autoscaling_group.asg.id
  description = "Auto scaling group ID"
}

output "auto_scaling_group_arn" {
  value = aws_autoscaling_group.asg.arn
  description = "Auto scaling group ARN"
}