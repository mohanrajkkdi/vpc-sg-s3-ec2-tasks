ec2_name          = "web-server-with-extra-1gb"
ec2_amiid         = "ami-0fc4d5701d7d01764"
ec2_sg            = "honda-unicorn-linux"
ec2_key_name      = "honda-unicorn-key"
ec2_instance_type = "t3.micro"
ec2_az            = "us-west-2a"

ebs_type = "gp3"
ebs_size = 2
ebs_iops = 3000
ebs_name = "2GB extra volume"

attachment_name = "/dev/sdb"