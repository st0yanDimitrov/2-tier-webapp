################################
# Load balancer settings
################################

# Create a new load balancer
############################
resource "aws_lb" "lb" {
  name            = var.lb_name
  subnets         = var.lb_public_subnet_ids
  security_groups = [var.lb_security_group_id]

  tags = {
    Name          = var.lb_tag_value
  }
}

# Create a target group for the load balancer
################################
resource "aws_lb_target_group" "lb_tg" {
  name     = var.lb_target_group_name
  port     = var.lb_target_group_port
  protocol = var.lb_target_group_protocol
  vpc_id   = var.lb_target_group_vpc_id

  # Set sticky sessions policy on the lb
  stickiness {
    cookie_duration = var.lb_target_group_sticky_cookie_duration
    cookie_name     = var.lb_target_group_sticky_cookie_name
    type            = var.lb_target_group_sticky_type
  }

  # Set the health check configuration for the target group
  health_check {
    interval = var.lb_health_check_interval
    path     = var.lb_health_check_path
    port     = var.lb_health_check_port
    timeout  = var.lb_health_check_timeout
    protocol = var.lb_health_check_protocol
    matcher  = var.lb_health_check_matcher
  }
}

# Create lb listener
################################
resource "aws_lb_listener" "lb_listener" {
  load_balancer_arn = aws_lb.lb.arn
  port              = var.lb_listener_port
  protocol          = var.lb_listener_protocol

  # Set the default action for the listener
  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.lb_tg.arn
  }
}