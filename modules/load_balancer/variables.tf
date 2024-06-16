################################
#Load Balancer Variables
################################
variable "lb_name" {
  type    = string
  description = "Public subnet load balancer name"
}

variable "lb_public_subnet_ids" {
  type = list(string)
  description = "List of public subnets to be attached to the load balancer"
}

variable "lb_security_group_id" {
  type = string
  description = "Load balancer security group ID"
}

variable "lb_tag_value" {
  type    = string
  description = "Public subnet load balancer Name tag value"
}

variable "lb_target_group_vpc_id" {
  type = string
  description = "Load balancer VPC ID"
}

# Load balancer health check
################################
variable "lb_health_check_interval" {
  type = string
  description = "Interval for performing health check"
}

variable "lb_health_check_path" {
  type = string
  description = "Path to which health check is performed"
}

variable "lb_health_check_port" {
  type = string
  description = "Port to which health check is performed"
}

variable "lb_health_check_timeout" {
  type = string
  description = "Path to which health check is performed"
}

variable "lb_health_check_protocol" {
  type = string
  description = "Health check protocol"
}

variable "lb_health_check_matcher" {
  type = string
  description = "Health check matcher"
}

# Load balancer Listener
################################
variable "lb_listener_port" {
  type = number
  description = "Load balancer listener port"
}

variable "lb_listener_protocol" {
  type = string
  description = "Load balancer listener protocol"
}

#Target Group
################################
variable "lb_target_group_name" {
  type    = string
  description = "Load balancer target group name"
}

variable "lb_target_group_port" {
  type = string
  description = "Load balancer target group port"
}

variable "lb_target_group_protocol" {
  type = string
  description = "Load balancer target group protocol"
}

variable "lb_target_group_sticky_type" {
  type = string
  description = "Sticky sessions type"
}

variable "lb_target_group_sticky_cookie_name" {
  type = string
  description = "Sticky sessions cookie name"
}

variable "lb_target_group_sticky_cookie_duration" {
  type = number
  description = "Sticky sessions cookie duration"
}
