#####################################
#VPC Variables - Parent Module 
####################################

variable "application_name" {
  type = string
  default = "mysql-php-webapp"
  description = "Here add the desired name of your application"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
  description = "Here add the desired AWS region"
}

variable "az_1" {
  type    = string
  default = "us-east-1a"
  description = "Here specify the first availability zone within the configured region"
}

variable "az_2" {
  type    = string
  default = "us-east-1b"
  description = "Here specify the second availability zones within the configured region"
}

variable "ec2_instances_type" {
  type = string
  default = "t2.micro"
  description = "Here specify the desired EC2 instance type"
}

variable "minimum_hosts" {
  
}

variable "db_instance_type" {
  type = string
  default = "db.t3.micro"
  description = "Here specify the desired RDS instance type"
}

variable "db_name" {
  type    = string
  default = "sampledb"
  description = "Here specify the application database name"
}

variable "db_username" {
  type = string
  default = "dbuser"
  description = "Here specify the application database username"
}

# Application database password is generated randomly
locals {
  db_password = random_password.password.result
}