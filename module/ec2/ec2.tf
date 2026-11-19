resource "aws_instance" "web-server" {
  ami = var.ec2_amiid
  security_groups = [var.ec2_sg]
  instance_type = var.ec2_instance_type
  key_name = var.ec2_key_name
  availability_zone = var.ec2_az
  tags = {
    Name = var.ec2_name
  }
}