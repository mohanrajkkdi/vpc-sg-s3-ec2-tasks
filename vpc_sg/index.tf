module "vpc_creation_with_security_group" {
  source = "../module/vpc"
  vpc_cidr_block = var.vpc_cidr_block
  vpc_tag = var.vpc_tag
  igw_name = var.igw_name

  public_subnet_name = var.public_subnet_name
  public_subnet_cidr = var.public_subnet_cidr
  public_subnet_az = var.public_subnet_az

  private_subnet_name = var.private_subnet_name
  private_subnet_cidr = var.private_subnet_cidr
  private_subnet_az = var.private_subnet_az

  default_route_table_cidr_block = var.default_route_table_cidr_block

  sg_name = var.sg_name
  http_port = var.http_port
  ssh_port = var.ssh_port
  ip_allow_all_traffic = var.ip_allow_all_traffic
  tcp_protocol = var.tcp_protocol
  allow_all_traffic_protocol = var.allow_all_traffic_protocol
}