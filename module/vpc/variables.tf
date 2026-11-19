variable "vpc_cidr_block" {}
variable "vpc_tag" {}
variable "igw_name" {}

variable "public_subnet_name" {}
variable "public_subnet_cidr" {}
variable "public_subnet_az" {}

variable "private_subnet_name" {}
variable "private_subnet_cidr" {}
variable "private_subnet_az" {}

variable "default_route_table_cidr_block" {}

variable "sg_name" {}
variable "http_port" {}
variable "ssh_port" {}
variable "ip_allow_all_traffic" {}
variable "tcp_protocol" {}
variable "allow_all_traffic_protocol" {}