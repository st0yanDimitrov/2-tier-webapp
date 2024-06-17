################################
# Outputs
################################

#DB Subnet Group
################################
output "db_subnet_group_id" {
  value = aws_db_subnet_group.db_subnet.id
  description = "Database subnet ID"
}

output "db_subnet_group_arn" {
  value = aws_db_subnet_group.db_subnet.arn
  description = "Database subnet ARN"
}

#DB Instance
################################
output "db_instance_id" {
  value = aws_db_instance.db_instance.id
  description = "Database instance ID"
}

output "db_instance_name" {
  value = aws_db_instance.db_instance.db_name
  description = "Database instance name"
}

output "rds_endpoint" {
  value = aws_db_instance.db_instance.endpoint
  description = "Endpoint address"
}

output "db_username" {
  value = var.db_username
  description = "Database master user"  
}

output "db_password" {
  value = var.db_password
  description = "Database master password"
}
