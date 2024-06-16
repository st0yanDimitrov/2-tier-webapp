# 2-tier-webapp

## Deploying a 2-Tier Web Application with Terraform on AWS
This document outlines the infrastructure deployment for a 2-tier web application on AWS using Terraform. The architecture consists of:

### Web Tier: 
Running a PHP web application on EC2 instances.
### Application Load Balancer (ALB): 
Distributes traffic across the EC2 instances in the web tier.
### Database Tier: 
Multi-AZ MySQL RDS instance for high availability.


## Components:

**VPC (Virtual Private Cloud):** Creates a logically isolated network for our resources.

**Subnets:** Defines private and public subnets for web servers and the database.

**Security Groups:** Restricts inbound and outbound traffic for each resource tier.

**Application Load Balancer (ALB):** Routes incoming traffic to healthy web servers and enables session affinity.

**Auto Scaling Group (ASG):** Automatically manages web server instances based on scaling policies and ALB healthchecks.

**EC2 Instances:** Run the web application on these instances.

**Multi-AZ RDS Database:** Highly available MySQL database for application data.


## Failover Details:

* RDS Multi-AZ Deployment: The RDS instance is configured with automatic failover across Availability Zones (AZs) within the chosen region. If the primary instance fails, the standby instance automatically takes over with minimal downtime.
* ALB Health Checks: The ALB continuously monitors the health of web servers. If a server becomes unhealthy, the ALB removes it from the traffic distribution until it recovers.
* Auto Scaling Group: The ASG automatically replaces unhealthy instances with new ones, ensuring continuous application availability.

## File structure
```
root/
├── main.tf
├── variales.tf
├── outputs.tf
├── providers.tf
├── random.tf
├── install-apache.sh
└── modules/
    ├── database/
    │   ├── variables.tf
    │   ├── outputs.tf
    │   └── main.tf
    ├── ec2_auto_scaling/
    │   ├── variables.tf
    │   ├── outputs.tf
    │   └── main.tf
    ├── load_balancer/
    │   ├── variables.tf
    │   ├── outputs.tf
    │   └── main.tf
    └── network_flow/
        ├── variables.tf
        ├── outputs.tf
        ├── route-tables.tf
        ├── security-groups.tf
        ├── gataways
        └── vpc.tf
```
The basic configuration is done in the variables.tf file in the root directory.
The setup can be further customized by intorducing changes in the other files. 

## How to deploy:

### Prerequisites:

* [Terraform](https://developer.hashicorp.com/terraform/tutorials/aws-get-started/install-cli)
* [AWS IAM user](https://docs.aws.amazon.com/IAM/latest/UserGuide/id_users_create.html)
with the following
<details> 
 <summary>
  permissions
 </summary>  
 
```json
{
	"Version": "2012-10-17",
	"Statement": [
		{
			"Effect": "Allow",
			"Action": [
				"autoscaling:DescribeAutoScalingGroups",
				"autoscaling:DescribeScalingActivities",
				"ec2:CreateTags",
				"ec2:DescribeAddresses",
				"ec2:DescribeInternetGateways",
				"ec2:DescribeLaunchTemplateVersions",
				"ec2:DescribeLaunchTemplates",
				"ec2:DescribeNatGateways",
				"ec2:DescribeNetworkAcls",
				"ec2:DescribeNetworkInterfaces",
				"ec2:DescribeRouteTables",
				"ec2:DescribeSecurityGroups",
				"ec2:DescribeSubnets",
				"ec2:DescribeVpcClassicLink",
				"ec2:DescribeVpcClassicLinkDnsSupport",
				"ec2:DescribeVpcs",
				"ec2:DisassociateAddress",
				"ec2:DisassociateRouteTable",
				"ec2:ReleaseAddress",
				"elasticloadbalancing:CreateListener",
				"elasticloadbalancing:CreateLoadBalancer",
				"elasticloadbalancing:DescribeListeners",
				"elasticloadbalancing:DescribeLoadBalancerAttributes",
				"elasticloadbalancing:DescribeLoadBalancers",
				"elasticloadbalancing:DescribeTags",
				"elasticloadbalancing:DescribeTargetGroupAttributes",
				"elasticloadbalancing:DescribeTargetGroups",
				"elasticloadbalancing:SetSecurityGroups",
				"rds:AddTagsToResource",
				"rds:ListTagsForResource",
				"sts:GetCallerIdentity"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"autoscaling:AttachLoadBalancerTargetGroups",
				"autoscaling:CreateAutoScalingGroup",
				"autoscaling:DeleteAutoScalingGroup",
				"autoscaling:DetachLoadBalancerTargetGroups",
				"autoscaling:SetInstanceProtection",
				"autoscaling:UpdateAutoScalingGroup"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": "ec2:AllocateAddress",
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"ec2:DetachNetworkInterface",
				"ec2:RunInstances"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"ec2:AttachInternetGateway",
				"ec2:CreateInternetGateway",
				"ec2:DeleteInternetGateway",
				"ec2:DetachInternetGateway"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"ec2:CreateLaunchTemplate",
				"ec2:DeleteLaunchTemplate"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"ec2:CreateNatGateway",
				"ec2:DeleteNatGateway"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"ec2:DetachNetworkInterface",
				"ec2:RunInstances"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"ec2:AssociateRouteTable",
				"ec2:CreateRoute",
				"ec2:CreateRouteTable",
				"ec2:DeleteRouteTable"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"ec2:AuthorizeSecurityGroupEgress",
				"ec2:AuthorizeSecurityGroupIngress",
				"ec2:CreateSecurityGroup",
				"ec2:DeleteSecurityGroup",
				"ec2:RevokeSecurityGroupEgress",
				"ec2:RunInstances"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"ec2:CreateNatGateway",
				"ec2:CreateSubnet",
				"ec2:DeleteSubnet",
				"ec2:ModifySubnetAttribute",
				"ec2:RunInstances"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"ec2:AttachInternetGateway",
				"ec2:CreateRouteTable",
				"ec2:CreateSubnet",
				"ec2:CreateVpc",
				"ec2:DeleteVpc",
				"ec2:DescribeVpcAttribute",
				"ec2:DetachInternetGateway",
				"ec2:ModifyVpcAttribute"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": "ec2:RunInstances",
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": "elasticloadbalancing:DeleteListener",
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": "elasticloadbalancing:DeleteListener",
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"elasticloadbalancing:AddTags",
				"elasticloadbalancing:DeleteLoadBalancer",
				"elasticloadbalancing:ModifyLoadBalancerAttributes"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"elasticloadbalancing:CreateTargetGroup",
				"elasticloadbalancing:DeleteTargetGroup",
				"elasticloadbalancing:ModifyTargetGroupAttributes"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": "iam:CreateServiceLinkedRole",
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"kms:CreateGrant",
				"kms:Decrypt",
				"kms:DescribeKey",
				"kms:GenerateDataKey"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"rds:CreateDBInstance",
				"rds:CreateTenantDatabase",
				"rds:DeleteDBInstance",
				"rds:DeleteTenantDatabase",
				"rds:DescribeDBInstances"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"rds:CreateDBSubnetGroup",
				"rds:DeleteDBSubnetGroup",
				"rds:DescribeDBSubnetGroups"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"rds:CreateTenantDatabase",
				"rds:DeleteTenantDatabase"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": [
				"secretsmanager:CreateSecret",
				"secretsmanager:TagResource"
			],
			"Resource": "*"
		},
		{
			"Effect": "Allow",
			"Action": "ssm:GetParameters",
			"Resource": "*"
		}
	]
}
```

 
</details>





* [AWS CLI installed and configured with the IAM user](https://docs.aws.amazon.com/cli/latest/userguide/cli-chap-getting-started.html)

### Deployment steps

1. Clone the repo:
```
git clone https://github.com/st0yanDimitrov/2-tier-webapp.git
```
3. Initialize the Terraform configuration:
```
terraform init
```
3. Preview the infrastructure changes:
```
terraform plan
```
4. Create the infrastructure on AWS:
```
terraform apply
```

