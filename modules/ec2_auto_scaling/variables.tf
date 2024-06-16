#####################################
#Auto Scaling Group Variables
#####################################
variable "asg_name" {
  type    = string
  description = "Name of the auto scaling group"
}

variable "asg_min_hosts" {
  type    = number
  description = "Minimum number of hosts in the auto scaling group"
}

variable "asg_max_hosts" {
  type    = number
  description = "Maximum number of hosts in the auto scaling group"
}

variable "asg_desired_capacity" {
  type        = number
  description = "Desired number of hosts in the auto scaling group"
}

variable "public_subnet_ids" {
  type = list(string)
  description = "List of public subnets"
}

variable "asg_tag_name_value" {
  type    = string
  description = "Name tag value of the auto scaling group"
}

#Launch Template
variable "asg_launch_template_name" {
  type    = string
  description = "Name of the launch template"
}

variable "asg_launch_template_ami" {
  type        = string
  description = "AMI used for the EC2 instances"
}

variable "asg_instance_type" {
  type    = string
  description = "EC2 instance type for the auto scaling group"
}

variable "asg_security_group_id" {
  type = string
  description = "ID of the auto scaling group security group"
}

variable "user_data_script_name" {
  type        = string
  description = "User Data Script"
}

variable "load_balancer_target_group_arn" {
  type = string
  description = "ARN of the auto scaling group target group"
}

variable "user_data_db_username" {
  type = string
  description = "Database master user"
}

variable "user_data_db_password" {
  type = string
  description = "Database master password"
}

variable "user_data_db_instance_name" {
  type = string
  description = "Database instance name"
}

variable "user_data_rds_endpoint" {
  type = string
  description = "RDS endpoint address"
}