# Create an autoscaling group with the specified configurations
resource "aws_autoscaling_group" "asg" {
  name                = var.asg_name
  min_size            = var.asg_min_hosts
  max_size            = var.asg_max_hosts
  desired_capacity    = var.asg_desired_capacity
  vpc_zone_identifier = var.public_subnet_ids
  health_check_type   = var.asg_health_check_type
  launch_template {
    id = aws_launch_template.lt_asg.id
  }
}

# Create a launch template with the specified configurations
resource "aws_launch_template" "lt_asg" {
  name                   = var.asg_launch_template_name
  image_id               = var.asg_launch_template_ami
  instance_type          = var.asg_instance_type
  vpc_security_group_ids = [var.asg_security_group_id]

  # Add DB connection details to the user data script
  user_data              = base64encode("${templatefile("${path.root}/${var.user_data_script_name}", {
    rds_endpoint             = var.user_data_rds_endpoint
    db_username              = var.user_data_db_username
    db_password              = var.user_data_db_password
    db_instance_name         = var.user_data_db_instance_name
  })}")
}

# Attach the autoscaling group to the target group of the ALB
resource "aws_autoscaling_attachment" "asg_tg_attach" {
  autoscaling_group_name = aws_autoscaling_group.asg.id
  lb_target_group_arn    = var.load_balancer_target_group_arn
}
