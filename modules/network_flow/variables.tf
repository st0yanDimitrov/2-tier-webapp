#####################################
#VPC Variables
#####################################
variable "vpc_name" {
  type    = string
  description = "VPC name"
}

variable "vpc_cidr" {
  type    = string
  description = "VPC CIDR"
}

variable "vpc_enable_instance_tenancy" {
  type    = string
  description = "Enable instance tenancy option"
}

variable "vpc_enable_dns_hostnames" {
  type    = bool
  description = "Enable dns hostnames option"
}

#####################################
#Public and Private Subnets Variables
#####################################

variable "map_public_ip" {
  type    = bool
  description = "Enable map public ip option"
}

variable "public_subnet1_name" {
  type    = string
  description = "Public subnet 1 name"
}

variable "public_subnet2_name" {
  type    = string
  description = "Public subnet 2 name"
}

variable "private_subnet1_name" {
  type    = string
  description = "Private subnet 1 name"
}

variable "private_subnet2_name" {
  type    = string
  description = "Private subnet 2 name"
}

#####################################
#Availability Zone Variables
#####################################
variable "az_1" {
  type    = string
  description = "Availability zone 1 (within the selected region)"
}

variable "az_2" {
  type    = string
  description = "Availability zone 2 (within the selected region)"
}

#####################################
#Route Table Variables
#####################################
variable "public_route_table_name" {
  type    = string
  description = "Public route table (public subnet to internet gateway) name"
}

variable "private_route_table_name" {
  type    = string
  description = "Private route table (private subnet to NAT gateway) name"
}

#####################################
#Gateway Variables
#####################################
variable "internet_gateway_name" {
  type    = string
  description = "Internet gateway name"
}

variable "nat_gateway_name" {
  type    = string
  description = "NAT gateway name"
}

#####################################
#Application Load Balancer Variables
#####################################
variable "lb_security_group_name" {
  type    = string
  description = "Load balancer security group name"
}

#####################################
#ASG & Database Security Group Variables
#####################################
variable "asg_security_group_name" {
  type    = string
  description = "Auto scaling group security group name"
}

variable "db_security_group_name" {
  type    = string
  description = "Database security group name"
}