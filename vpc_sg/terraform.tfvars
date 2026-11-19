vpc_cidr_block = "10.0.0.0/21"
vpc_tag = "Honda-VPC"
igw_name = "Honda-igw"

public_subnet_name = "Public_subnet1"
public_subnet_cidr = "10.0.2.0/23"
public_subnet_az = "us-west-2a"

private_subnet_name = "Private_subnet2"
private_subnet_cidr = "10.0.4.0/23"
private_subnet_az = "us-west-2a"

default_route_table_cidr_block = "0.0.0.0/0"

sg_name = "Terra-sg"
http_port = 80
ssh_port = 22
ip_allow_all_traffic = "0.0.0.0/0"
tcp_protocol = "tcp"
allow_all_traffic_protocol = "-1"