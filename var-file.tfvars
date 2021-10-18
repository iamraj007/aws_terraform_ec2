region                      = "us-east-1"
availability_zone           = "us-east-2a"
sg_id                       = "sg-01234bxxxxxxxxx"
sg_id_web                   = "sg-0123axxxxxxxxxx"
subnet_id                   = "subnet-0b123axxxxxxxxx"
associate_public_ip_address = "true"

ec2_instance_type = "t3.large"
ami_id            = "ami-0f25b344af3f73199"
ec2_name          = "EC2-App1"

ec2_keyname    = "ec2-dev-key"
ec2_monitoring = "false"

ebs_data_vol_size = "1024"

Environment_tag      = "Dev"
Onwer_tag            = "ME"
