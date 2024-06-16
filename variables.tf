#####################################
#VPC Variables - Parent Module 
####################################

variable "application_name" {
  type = string
  default = "mysql-php-webapp"
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "az_1" {
  type    = string
  default = "us-east-1a"
}

variable "az_2" {
  type    = string
  default = "us-east-1b"
}

variable "db_name" {
  type    = string
  default = "sampledb"
}

variable "db_username" {
  type = string
  default = "dbuser"
}

locals {
  db_password = random_password.password.result
}