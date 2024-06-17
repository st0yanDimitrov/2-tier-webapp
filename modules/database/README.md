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
| [aws_db_instance.db_instance](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_instance) | resource |
| [aws_db_subnet_group.db_subnet](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/db_subnet_group) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_db_allocated_storage"></a> [db\_allocated\_storage](#input\_db\_allocated\_storage) | Database instance initial storage allocation | `number` | n/a | yes |
| <a name="input_db_allow_major_version_upgrade"></a> [db\_allow\_major\_version\_upgrade](#input\_db\_allow\_major\_version\_upgrade) | Allow performing of major version upgrade | `bool` | n/a | yes |
| <a name="input_db_auto_minor_version_upgrade"></a> [db\_auto\_minor\_version\_upgrade](#input\_db\_auto\_minor\_version\_upgrade) | Option: Auto minor version upgrade | `bool` | n/a | yes |
| <a name="input_db_backup_retention_period"></a> [db\_backup\_retention\_period](#input\_db\_backup\_retention\_period) | Set time window for snapshot retention | `number` | n/a | yes |
| <a name="input_db_backup_window"></a> [db\_backup\_window](#input\_db\_backup\_window) | Set time window for instance maintenance | `string` | n/a | yes |
| <a name="input_db_engine"></a> [db\_engine](#input\_db\_engine) | Database instance database engine | `string` | n/a | yes |
| <a name="input_db_engine_version"></a> [db\_engine\_version](#input\_db\_engine\_version) | Database instance database engine version | `string` | n/a | yes |
| <a name="input_db_identifier"></a> [db\_identifier](#input\_db\_identifier) | Database instance identifier | `string` | n/a | yes |
| <a name="input_db_instance_class"></a> [db\_instance\_class](#input\_db\_instance\_class) | Database instance machine class | `string` | n/a | yes |
| <a name="input_db_maintenance_window"></a> [db\_maintenance\_window](#input\_db\_maintenance\_window) | Set time window for instance maintenance | `string` | n/a | yes |
| <a name="input_db_multi_az"></a> [db\_multi\_az](#input\_db\_multi\_az) | Allow database high availability | `bool` | n/a | yes |
| <a name="input_db_name"></a> [db\_name](#input\_db\_name) | Initial database name | `string` | n/a | yes |
| <a name="input_db_parameter_group_name"></a> [db\_parameter\_group\_name](#input\_db\_parameter\_group\_name) | Parameter group associated with this database instance | `string` | n/a | yes |
| <a name="input_db_password"></a> [db\_password](#input\_db\_password) | Database Master password | `string` | n/a | yes |
| <a name="input_db_private_subnet_ids"></a> [db\_private\_subnet\_ids](#input\_db\_private\_subnet\_ids) | List of subnets for the database subnet group | `list(string)` | n/a | yes |
| <a name="input_db_skip_final_snapshot"></a> [db\_skip\_final\_snapshot](#input\_db\_skip\_final\_snapshot) | Skip final snapshot creation upon instance deletion | `bool` | n/a | yes |
| <a name="input_db_storage_type"></a> [db\_storage\_type](#input\_db\_storage\_type) | Database instance storage type | `string` | n/a | yes |
| <a name="input_db_subnet_name"></a> [db\_subnet\_name](#input\_db\_subnet\_name) | Database subnet name | `string` | n/a | yes |
| <a name="input_db_username"></a> [db\_username](#input\_db\_username) | Database master user | `string` | n/a | yes |
| <a name="input_db_vpc_security_group_ids"></a> [db\_vpc\_security\_group\_ids](#input\_db\_vpc\_security\_group\_ids) | List of security groups for the database instance | `list(string)` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_db_instance_id"></a> [db\_instance\_id](#output\_db\_instance\_id) | Databse instance ID |
| <a name="output_db_instance_name"></a> [db\_instance\_name](#output\_db\_instance\_name) | Database instance name |
| <a name="output_db_password"></a> [db\_password](#output\_db\_password) | Database master password |
| <a name="output_db_subnet_group_arn"></a> [db\_subnet\_group\_arn](#output\_db\_subnet\_group\_arn) | Database subnet ARN |
| <a name="output_db_subnet_group_id"></a> [db\_subnet\_group\_id](#output\_db\_subnet\_group\_id) | Database subnet ID |
| <a name="output_db_username"></a> [db\_username](#output\_db\_username) | Database master user |
| <a name="output_rds_endpoint"></a> [rds\_endpoint](#output\_rds\_endpoint) | Endpoint address |
<!-- END_TF_DOCS -->