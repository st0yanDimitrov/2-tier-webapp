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
| [aws_autoscaling_attachment.asg_tg_attach](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_attachment) | resource |
| [aws_autoscaling_group.asg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/autoscaling_group) | resource |
| [aws_launch_template.lt_asg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/launch_template) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_asg_desired_capacity"></a> [asg\_desired\_capacity](#input\_asg\_desired\_capacity) | Desired number of hosts in the auto scaling group | `number` | n/a | yes |
| <a name="input_asg_health_check_type"></a> [asg\_health\_check\_type](#input\_asg\_health\_check\_type) | Sets health check type for auto scaling group | `string` | n/a | yes |
| <a name="input_asg_instance_type"></a> [asg\_instance\_type](#input\_asg\_instance\_type) | EC2 instance type for the auto scaling group | `string` | n/a | yes |
| <a name="input_asg_launch_template_ami"></a> [asg\_launch\_template\_ami](#input\_asg\_launch\_template\_ami) | AMI used for the EC2 instances | `string` | n/a | yes |
| <a name="input_asg_launch_template_name"></a> [asg\_launch\_template\_name](#input\_asg\_launch\_template\_name) | Name of the launch template | `string` | n/a | yes |
| <a name="input_asg_max_hosts"></a> [asg\_max\_hosts](#input\_asg\_max\_hosts) | Maximum number of hosts in the auto scaling group | `number` | n/a | yes |
| <a name="input_asg_min_hosts"></a> [asg\_min\_hosts](#input\_asg\_min\_hosts) | Minimum number of hosts in the auto scaling group | `number` | n/a | yes |
| <a name="input_asg_name"></a> [asg\_name](#input\_asg\_name) | Name of the auto scaling group | `string` | n/a | yes |
| <a name="input_asg_security_group_id"></a> [asg\_security\_group\_id](#input\_asg\_security\_group\_id) | ID of the auto scaling group security group | `string` | n/a | yes |
| <a name="input_load_balancer_target_group_arn"></a> [load\_balancer\_target\_group\_arn](#input\_load\_balancer\_target\_group\_arn) | ARN of the auto scaling group target group | `string` | n/a | yes |
| <a name="input_public_subnet_ids"></a> [public\_subnet\_ids](#input\_public\_subnet\_ids) | List of public subnets | `list(string)` | n/a | yes |
| <a name="input_user_data_db_instance_name"></a> [user\_data\_db\_instance\_name](#input\_user\_data\_db\_instance\_name) | Database instance name | `string` | n/a | yes |
| <a name="input_user_data_db_password"></a> [user\_data\_db\_password](#input\_user\_data\_db\_password) | Database master password | `string` | n/a | yes |
| <a name="input_user_data_db_username"></a> [user\_data\_db\_username](#input\_user\_data\_db\_username) | Database master user | `string` | n/a | yes |
| <a name="input_user_data_rds_endpoint"></a> [user\_data\_rds\_endpoint](#input\_user\_data\_rds\_endpoint) | RDS endpoint address | `string` | n/a | yes |
| <a name="input_user_data_script_name"></a> [user\_data\_script\_name](#input\_user\_data\_script\_name) | User Data Script | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_auto_scaling_group_arn"></a> [auto\_scaling\_group\_arn](#output\_auto\_scaling\_group\_arn) | Auto scaling group ARN |
| <a name="output_auto_scaling_group_id"></a> [auto\_scaling\_group\_id](#output\_auto\_scaling\_group\_id) | Auto scaling group ID |
| <a name="output_auto_scaling_group_name"></a> [auto\_scaling\_group\_name](#output\_auto\_scaling\_group\_name) | Auto scaling group name |
<!-- END_TF_DOCS -->