module "instance_provisioning_and_attach_ebs_volume" {
  source            = "../module/ec2"
  ec2_name          = var.ec2_name
  ec2_amiid         = var.ec2_amiid
  ec2_sg            = var.ec2_sg
  ec2_key_name      = var.ec2_key_name
  ec2_instance_type = var.ec2_instance_type
  ec2_az            = var.ec2_az

  ebs_type        = var.ebs_type
  ebs_size        = var.ebs_size
  ebs_iops        = var.ebs_iops
  ebs_name        = var.ebs_name
  attachment_name = var.attachment_name
}