# Create an AWS VPC
resource "aws_vpc" "vpc" {
  cidr_block       = var.vpc_cidr
  instance_tenancy = var.vpc_enable_instance_tenancy
  enable_dns_hostnames = var.vpc_enable_dns_hostnames

  tags = {
    Name = var.vpc_name
  }
}

# Create first public subnet in the VPC
resource "aws_subnet" "pub_sub1" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.1.0/24"
  availability_zone       = var.az_1
  map_public_ip_on_launch = var.map_public_ip

  tags = {
    Name = var.public_subnet1_name
  }
}

# Create second public subnet in the VPC
resource "aws_subnet" "pub_sub2" {
  vpc_id                  = aws_vpc.vpc.id
  cidr_block              = "10.0.2.0/24"
  availability_zone       = var.az_2
  map_public_ip_on_launch = var.map_public_ip

  tags = {
    Name = var.public_subnet2_name
  }
}

# Create first private subnet in the VPC
resource "aws_subnet" "priv_sub1" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.3.0/24"
  availability_zone = var.az_1

  tags = {
    Name = var.private_subnet1_name
  }
}

# Create second private subnet in the VPC
resource "aws_subnet" "priv_sub2" {
  vpc_id            = aws_vpc.vpc.id
  cidr_block        = "10.0.4.0/24"
  availability_zone = var.az_2

  tags = {
    Name = var.private_subnet2_name
  }
}