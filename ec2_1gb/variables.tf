variable "ec2_name" {}
variable "ec2_amiid" {
  sensitive = true
}
variable "ec2_sg" {
  sensitive = true
}
variable "ec2_key_name" {
  sensitive = true
}
variable "ec2_instance_type" {}
variable "ec2_az" {}

variable "ebs_type" {}
variable "ebs_size" {}
variable "ebs_iops" {}
variable "ebs_name" {}

variable "attachment_name" {}
