# Database subnet group
resource "aws_db_subnet_group" "db_subnet" {
  name       = var.db_subnet_name
  subnet_ids = var.db_private_subnet_ids
}

# Database instance in Private Subnet 1
resource "aws_db_instance" "db_instance" {
  identifier                  = var.db_identifier
  allocated_storage           = var.db_allocated_storage
  storage_type                = var.db_storage_type
  engine                      = var.db_engine
  engine_version              = var.db_engine_version
  instance_class              = var.db_instance_class
  db_subnet_group_name        = var.db_subnet_name
  vpc_security_group_ids      = var.db_vpc_security_group_ids
  parameter_group_name        = var.db_parameter_group_name
  db_name                     = var.db_name
  username                    = var.db_username
  password                    = var.db_password
  allow_major_version_upgrade = var.db_allow_major_version_upgrade
  auto_minor_version_upgrade  = var.db_auto_minor_version_upgrade
  backup_retention_period     = var.db_backup_retention_period
  backup_window               = var.db_backup_window
  maintenance_window          = var.db_maintenance_window
  multi_az                    = var.db_multi_az
  skip_final_snapshot         = var.db_skip_final_snapshot

  # Ensure that DB subnet is created first
  depends_on = [aws_db_subnet_group.db_subnet]
}