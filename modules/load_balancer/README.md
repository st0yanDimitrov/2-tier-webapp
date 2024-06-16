<!-- BEGIN_TF_DOCS -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_lb.lb](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb) | resource |
| [aws_lb_listener.lb_listener](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_listener) | resource |
| [aws_lb_target_group.lb_tg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/lb_target_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_lb_health_check_interval"></a> [lb\_health\_check\_interval](#input\_lb\_health\_check\_interval) | Interval for performing health check | `string` | n/a | yes |
| <a name="input_lb_health_check_matcher"></a> [lb\_health\_check\_matcher](#input\_lb\_health\_check\_matcher) | Health check matcher | `string` | n/a | yes |
| <a name="input_lb_health_check_path"></a> [lb\_health\_check\_path](#input\_lb\_health\_check\_path) | Path to which health check is performed | `string` | n/a | yes |
| <a name="input_lb_health_check_port"></a> [lb\_health\_check\_port](#input\_lb\_health\_check\_port) | Port to which health check is performed | `string` | n/a | yes |
| <a name="input_lb_health_check_protocol"></a> [lb\_health\_check\_protocol](#input\_lb\_health\_check\_protocol) | Health check protocol | `string` | n/a | yes |
| <a name="input_lb_health_check_timeout"></a> [lb\_health\_check\_timeout](#input\_lb\_health\_check\_timeout) | Path to which health check is performed | `string` | n/a | yes |
| <a name="input_lb_listener_port"></a> [lb\_listener\_port](#input\_lb\_listener\_port) | Load balancer listener port | `number` | n/a | yes |
| <a name="input_lb_listener_protocol"></a> [lb\_listener\_protocol](#input\_lb\_listener\_protocol) | Load balancer listener protocol | `string` | n/a | yes |
| <a name="input_lb_name"></a> [lb\_name](#input\_lb\_name) | Public subnet load balancer name | `string` | n/a | yes |
| <a name="input_lb_public_subnet_ids"></a> [lb\_public\_subnet\_ids](#input\_lb\_public\_subnet\_ids) | List of public subnets to be attached to the load balancer | `list(string)` | n/a | yes |
| <a name="input_lb_security_group_id"></a> [lb\_security\_group\_id](#input\_lb\_security\_group\_id) | Load balancer security group ID | `string` | n/a | yes |
| <a name="input_lb_target_group_name"></a> [lb\_target\_group\_name](#input\_lb\_target\_group\_name) | Load balancer target group name | `string` | n/a | yes |
| <a name="input_lb_target_group_port"></a> [lb\_target\_group\_port](#input\_lb\_target\_group\_port) | Load balancer target group port | `string` | n/a | yes |
| <a name="input_lb_target_group_protocol"></a> [lb\_target\_group\_protocol](#input\_lb\_target\_group\_protocol) | Load balancer target group protocol | `string` | n/a | yes |
| <a name="input_lb_target_group_sticky_cookie_duration"></a> [lb\_target\_group\_sticky\_cookie\_duration](#input\_lb\_target\_group\_sticky\_cookie\_duration) | Sticky sessions cookie duration | `number` | n/a | yes |
| <a name="input_lb_target_group_sticky_cookie_name"></a> [lb\_target\_group\_sticky\_cookie\_name](#input\_lb\_target\_group\_sticky\_cookie\_name) | Sticky sessions cookie name | `string` | n/a | yes |
| <a name="input_lb_target_group_sticky_type"></a> [lb\_target\_group\_sticky\_type](#input\_lb\_target\_group\_sticky\_type) | Sticky sessions type | `string` | n/a | yes |
| <a name="input_lb_target_group_vpc_id"></a> [lb\_target\_group\_vpc\_id](#input\_lb\_target\_group\_vpc\_id) | Load balancer VPC ID | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_lb_arn"></a> [lb\_arn](#output\_lb\_arn) | Public subnet load balancer ARN |
| <a name="output_lb_dns"></a> [lb\_dns](#output\_lb\_dns) | Public subnet load balancer DNS name |
| <a name="output_lb_id"></a> [lb\_id](#output\_lb\_id) | Public subnet load balancer ID |
| <a name="output_lb_target_group_arn"></a> [lb\_target\_group\_arn](#output\_lb\_target\_group\_arn) | Public subnet load balancer target group ARN |
| <a name="output_lb_target_group_id"></a> [lb\_target\_group\_id](#output\_lb\_target\_group\_id) | Public subnet load balancer target group ID |
<!-- END_TF_DOCS -->