resource "aws_ebs_volume" "additional_volume" {
  availability_zone = var.ec2_az
  type = var.ebs_type
  size = var.ebs_size
  iops = var.ebs_iops
  tags = {
    Name = var.ebs_name
  }
}

resource "aws_volume_attachment" "additional_volume_attach" {
  device_name = var.attachment_name
  volume_id = aws_ebs_volume.additional_volume.id
  instance_id = aws_instance.web-server.id
}