# Outputs
################################
#VPC Outputs
################################
output "vpc_id" {
  value = aws_vpc.vpc.id
  description = "VPC ID"
}

output "public_subnet1_id" {
  value = aws_subnet.pub_sub1.id
  description = "Public subnet 1 ID"
}

output "public_subnet2_id" {
  value = aws_subnet.pub_sub2.id
  description = "Public subnet 2 ID"
}

output "private_subnet1_id" {
  value = aws_subnet.priv_sub1.id
  description = "Private subnet 1 ID"
}

output "private_subnet2_id" {
  value = aws_subnet.priv_sub2.id
  description = "Private subnet 2 ID"
}

################################
#Gateway Outputs
################################
output "internet_gateway_id" {
  value = aws_internet_gateway.igw.id
  description = "Internet gateway ID"
}

################################
#Route Table Outputs
################################
output "public_route_table_id" {
  value = aws_route_table.pub_rt.id
  description = "Public route table ID"
}

output "private_routetable_id" {
  value = aws_route_table.priv_rt.id
  description = "Private route table ID"
}

################################
#Security Group Outputs
################################
output "lb_security_group_id" {
  value = aws_security_group.alb_sg.id
  description = "Load balancer security group ID"
}

output "asg_security_group_id" {
  value = aws_security_group.asg_sg.id
  description = "Auto scaling group security group ID"
}

output "db_security_group_id" {
  value = aws_security_group.db_sg.id
  description = "Database security group ID"
}
