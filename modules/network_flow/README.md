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
| [aws_eip.ngw_eip](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/eip) | resource |
| [aws_internet_gateway.igw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/internet_gateway) | resource |
| [aws_nat_gateway.ngw](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/nat_gateway) | resource |
| [aws_route_table.priv_rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table.pub_rt](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table) | resource |
| [aws_route_table_association.priv_sub1_rt_ass](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.priv_sub2_rt_ass](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub_sub1_rt_ass](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_route_table_association.pub_sub2_rt_ass](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/route_table_association) | resource |
| [aws_security_group.alb_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.asg_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_security_group.db_sg](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/security_group) | resource |
| [aws_subnet.priv_sub1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.priv_sub2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.pub_sub1](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_subnet.pub_sub2](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/subnet) | resource |
| [aws_vpc.vpc](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_asg_security_group_name"></a> [asg\_security\_group\_name](#input\_asg\_security\_group\_name) | Auto scaling group security group name | `string` | n/a | yes |
| <a name="input_az_1"></a> [az\_1](#input\_az\_1) | Availability zone 1 (within the selected region) | `string` | n/a | yes |
| <a name="input_az_2"></a> [az\_2](#input\_az\_2) | Availability zone 2 (within the selected region) | `string` | n/a | yes |
| <a name="input_db_security_group_name"></a> [db\_security\_group\_name](#input\_db\_security\_group\_name) | Database security group name | `string` | n/a | yes |
| <a name="input_internet_gateway_name"></a> [internet\_gateway\_name](#input\_internet\_gateway\_name) | Internet gateway name | `string` | n/a | yes |
| <a name="input_lb_security_group_name"></a> [lb\_security\_group\_name](#input\_lb\_security\_group\_name) | Load balancer security group name | `string` | n/a | yes |
| <a name="input_map_public_ip"></a> [map\_public\_ip](#input\_map\_public\_ip) | Enable map public ip option | `bool` | n/a | yes |
| <a name="input_nat_gateway_name"></a> [nat\_gateway\_name](#input\_nat\_gateway\_name) | NAT gateway name | `string` | n/a | yes |
| <a name="input_private_route_table_name"></a> [private\_route\_table\_name](#input\_private\_route\_table\_name) | Private route table (private subnet to NAT gateway) name | `string` | n/a | yes |
| <a name="input_private_subnet1_name"></a> [private\_subnet1\_name](#input\_private\_subnet1\_name) | Private subnet 1 name | `string` | n/a | yes |
| <a name="input_private_subnet2_name"></a> [private\_subnet2\_name](#input\_private\_subnet2\_name) | Private subnet 2 name | `string` | n/a | yes |
| <a name="input_public_route_table_name"></a> [public\_route\_table\_name](#input\_public\_route\_table\_name) | Public route table (public subnet to internet gateway) name | `string` | n/a | yes |
| <a name="input_public_subnet1_name"></a> [public\_subnet1\_name](#input\_public\_subnet1\_name) | Public subnet 1 name | `string` | n/a | yes |
| <a name="input_public_subnet2_name"></a> [public\_subnet2\_name](#input\_public\_subnet2\_name) | Piblic subnet 2 name | `string` | n/a | yes |
| <a name="input_vpc_cidr"></a> [vpc\_cidr](#input\_vpc\_cidr) | VPC CIDR | `string` | n/a | yes |
| <a name="input_vpc_enable_dns_hostnames"></a> [vpc\_enable\_dns\_hostnames](#input\_vpc\_enable\_dns\_hostnames) | Enable dns hostnames option | `bool` | n/a | yes |
| <a name="input_vpc_enable_instance_tenancy"></a> [vpc\_enable\_instance\_tenancy](#input\_vpc\_enable\_instance\_tenancy) | Enable instance tenancy option | `string` | n/a | yes |
| <a name="input_vpc_name"></a> [vpc\_name](#input\_vpc\_name) | VPC name | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_asg_security_group_id"></a> [asg\_security\_group\_id](#output\_asg\_security\_group\_id) | Auto scaling group security group ID |
| <a name="output_db_security_group_id"></a> [db\_security\_group\_id](#output\_db\_security\_group\_id) | Database security group ID |
| <a name="output_internet_gateway_id"></a> [internet\_gateway\_id](#output\_internet\_gateway\_id) | Internet gateway ID |
| <a name="output_lb_security_group_id"></a> [lb\_security\_group\_id](#output\_lb\_security\_group\_id) | Load balancer security group ID |
| <a name="output_private_routetable_id"></a> [private\_routetable\_id](#output\_private\_routetable\_id) | Private route table ID |
| <a name="output_private_subnet1_id"></a> [private\_subnet1\_id](#output\_private\_subnet1\_id) | Private subnet 1 ID |
| <a name="output_private_subnet2_id"></a> [private\_subnet2\_id](#output\_private\_subnet2\_id) | Private subnet 2 ID |
| <a name="output_public_route_table_id"></a> [public\_route\_table\_id](#output\_public\_route\_table\_id) | Public route table ID |
| <a name="output_public_subnet1_id"></a> [public\_subnet1\_id](#output\_public\_subnet1\_id) | Public subnet 1 ID |
| <a name="output_public_subnet2_id"></a> [public\_subnet2\_id](#output\_public\_subnet2\_id) | Public subnet 2 ID |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC ID |
<!-- END_TF_DOCS -->