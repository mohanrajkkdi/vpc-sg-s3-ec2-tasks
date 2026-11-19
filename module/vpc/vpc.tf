resource "aws_vpc" "honda-vpc" {
    cidr_block = var.vpc_cidr_block
    tags = {
      Name = var.vpc_tag
    }
}

resource "aws_internet_gateway" "honda-igw" {
  vpc_id = aws_vpc.honda-vpc.id
  tags = {
    Name = var.igw_name
  }
}

resource "aws_subnet" "public_subnet1" {
  vpc_id = aws_vpc.honda-vpc.id
  availability_zone = var.public_subnet_az
  cidr_block = var.public_subnet_cidr
  map_public_ip_on_launch = true
  tags = {
    Name = var.public_subnet_name
  }
}

resource "aws_subnet" "private_subnet2" {
  vpc_id = aws_vpc.honda-vpc.id
  availability_zone = var.private_subnet_az
  cidr_block = var.private_subnet_cidr
  tags = {
    Name = var.private_subnet_name
  }
}

resource "aws_route" "internet_access" {
  route_table_id = aws_vpc.honda-vpc.default_route_table_id
  destination_cidr_block = var.default_route_table_cidr_block
  gateway_id = aws_internet_gateway.honda-igw.id
}

resource "aws_route_table_association" "public_subnet_association" {
  route_table_id = aws_vpc.honda-vpc.default_route_table_id
  subnet_id = aws_subnet.public_subnet1.id
}

resource "aws_security_group" "terra-sg" {
  vpc_id = aws_vpc.honda-vpc.id
  name = var.sg_name
  tags = {
    Name = var.sg_name
  }
}

resource "aws_vpc_security_group_ingress_rule" "allow_http" {
  ip_protocol = var.tcp_protocol
  security_group_id = aws_security_group.terra-sg.id
  cidr_ipv4 = var.ip_allow_all_traffic
  from_port = var.http_port
  to_port = var.http_port
}

resource "aws_vpc_security_group_ingress_rule" "allow_ssh" {
  ip_protocol = var.tcp_protocol
  security_group_id = aws_security_group.terra-sg.id
  cidr_ipv4 = var.ip_allow_all_traffic
  from_port = var.ssh_port
  to_port = var.ssh_port
}

resource "aws_vpc_security_group_egress_rule" "allow_all_traffic" {
  ip_protocol = var.allow_all_traffic_protocol
  security_group_id = aws_security_group.terra-sg.id
  cidr_ipv4 = var.ip_allow_all_traffic
}
