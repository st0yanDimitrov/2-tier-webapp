# Instance Module
module "auto_scaling_group" {
  source                                 = "./modules/ec2_auto_scaling"
  asg_name                               = format("%s-asg", var.application_name)
  asg_instance_type                      = var.ec2_instances_type
  asg_min_hosts                          = var.minimum_hosts_count
  asg_max_hosts                          = var.maximum_hosts_count
  asg_desired_capacity                   = var.desired_hosts_count
  asg_health_check_type                  = "ELB"
  asg_launch_template_name               = format("%s-launch-template", var.application_name)
  asg_launch_template_ami                = "ami-06b09bfacae1453cb"
  asg_security_group_id                  = module.network_flow.asg_security_group_id
  user_data_script_name                  = "install-apache.sh"
  public_subnet_ids                      = [module.network_flow.public_subnet1_id, module.network_flow.public_subnet2_id]
  load_balancer_target_group_arn         = module.load_balancer.lb_target_group_arn
  
  # DB patameters for the user data script
  user_data_rds_endpoint                 = module.database.rds_endpoint
  user_data_db_username                  = var.db_username
  user_data_db_password                  = local.db_password
  user_data_db_instance_name             = module.database.db_instance_name
}

# Load Balancer Module
module "load_balancer" {
  source                                 = "./modules/load_balancer"
  lb_name                                = format("%s-lb", var.application_name)
  lb_public_subnet_ids                   = [module.network_flow.public_subnet1_id, module.network_flow.public_subnet2_id]
  lb_security_group_id                   = module.network_flow.lb_security_group_id
  lb_health_check_interval               = 60
  lb_health_check_path                   = "/index.php"
  lb_health_check_port                   = 80
  lb_health_check_timeout                = 45
  lb_health_check_protocol               = "HTTP"
  lb_health_check_matcher                = "200,202"
  lb_listener_port                       = 80
  lb_listener_protocol                   = "HTTP"
  lb_target_group_name                   = format("%s-target-group", var.application_name)
  lb_target_group_port                   = 80
  lb_target_group_protocol               = "HTTP"
  lb_target_group_vpc_id                 = module.network_flow.vpc_id
  lb_target_group_sticky_cookie_name     = format("%s-sticky-cookie", var.application_name)
  lb_target_group_sticky_type            = "lb_cookie"
  lb_target_group_sticky_cookie_duration = 600
}

# VPC Module
module "network_flow" {
  source                                 = "./modules/network_flow"
  vpc_name                               = format("%s-vpc", var.application_name)
  vpc_cidr                               = "10.0.0.0/16"
  vpc_enable_instance_tenancy            = "default"
  vpc_enable_dns_hostnames               = true
  az_1                                   = var.az_1
  az_2                                   = var.az_2
  public_subnet1_name                    = format("%s-public-subnet1", var.application_name)
  public_subnet2_name                    = format("%s-public-subnet2", var.application_name)
  map_public_ip                          = true
  private_subnet1_name                   = format("%s-private-subnat1", var.application_name)
  private_subnet2_name                   = format("%s-private-subnet2", var.application_name)
  public_route_table_name                = format("%s-public-route-table", var.application_name)
  private_route_table_name               = format("%s-private-route-table", var.application_name)
  internet_gateway_name                  = format("%s-internet-gateway", var.application_name)
  nat_gateway_name                       = format("%s-nat-gateway", var.application_name)
  lb_security_group_name                 = format("%s-security-group", var.application_name)
  asg_security_group_name                = format("%s-asg", var.application_name)
  db_security_group_name                 = format("%s-target-group", var.application_name)

}


# Database Module
module "database" {
  source                                 = "./modules/database"
  db_identifier                          = format("%s-database", var.application_name)
  db_subnet_name                         = format("%s-db-subnet", var.application_name)
  db_private_subnet_ids                  = [module.network_flow.private_subnet1_id, module.network_flow.private_subnet2_id]
  db_allocated_storage                   = 5
  db_storage_type                        = "gp2"
  db_engine                              = "mysql"
  db_engine_version                      = "8.0.35"
  db_instance_class                      = var.db_instance_type
  db_vpc_security_group_ids              = [module.network_flow.db_security_group_id]
  db_parameter_group_name                = "default.mysql8.0"
  db_name                                = var.db_name
  db_username                            = var.db_username
  db_password                            = local.db_password
  db_allow_major_version_upgrade         = true
  db_auto_minor_version_upgrade          = true
  db_backup_retention_period             = 35
  db_backup_window                       = "22:00-23:00"
  db_maintenance_window                  = "Sat:00:00-Sat:03:00"
  db_multi_az                            = true
  db_skip_final_snapshot                 = true
}