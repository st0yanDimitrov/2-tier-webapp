#####################################
#Database Variables
#####################################

#Database Subnet Group
#####################################
variable "db_subnet_name" {
  type    = string
  description = "Database subnet name"
}

variable "db_private_subnet_ids" {
  type = list(string)
  description = "List of subnets for the database subnet group"
}

#Database
#####################################

variable "db_identifier" {
  type = string
  description = "Databse instance identifier"
}

variable "db_allocated_storage" {
  type = number
  description = "Database instance inital storage allocation"
}

variable "db_storage_type" {
  type = string
  description = "Database instance storage type"
}

variable "db_engine" {
  type = string
  description = "Database instance database engine"
}

variable "db_engine_version" {
  type = string
  description = "Database instance database engine version"
}

variable "db_instance_class" {
  type = string
  description = "Database instance machine class"
}

variable "db_vpc_security_group_ids" {
  type = list(string)
  description = "List of security groups for the databse instance"
}

variable "db_parameter_group_name" {
  type = string
  description = "Parameter group associated with this databse instanc"
}

variable "db_name" {
  type = string
  description = "Initial database name"
}

variable "db_username" {
  type = string
  description = "Database master user"
}

variable "db_password" {
  type = string
  description = "Database Master password"
}

variable "db_allow_major_version_upgrade" {
  type = bool
  description = "Allow performing of major version upgrade"
}

variable "db_auto_minor_version_upgrade" {
  type = bool
  description = "Option: Auto minor version upgrade"
}

variable "db_backup_retention_period" {
  type = number
  description = "Set time window for snapshot retention"
}

variable "db_backup_window" {
  type = string
  description = "Set time window for instance maintenance"
}

variable "db_maintenance_window" {
  type = string
  description = "Set time window for instance maintenance"
}

variable "db_multi_az" {
  type = bool
  description = "Allow database high availability"
}

variable "db_skip_final_snapshot" {
  type = bool
  description = "Skip final snapshot creation upon instance deletion"
}


