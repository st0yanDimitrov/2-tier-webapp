# Create an internet gateway and associate it with the VPC
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id

  tags = {
    Name = var.internet_gateway_name
  }
}

# Create an Elastic IP address
resource "aws_eip" "ngw_eip" {
  vpc = true
}

# Create a NAT gateway and associate it with an Elastic IP and a public subnet
resource "aws_nat_gateway" "ngw" {

  # Associate the NAT gateway with the Elastic IP
  allocation_id = aws_eip.ngw_eip.id

  # Associate the NAT gateway with a public subnet
  subnet_id     = aws_subnet.pub_sub1.id

  tags = {
    Name = var.nat_gateway_name
  }

  # Make sure the internet gateway is created before creating the NAT gateway
  depends_on = [aws_internet_gateway.igw] 
}
