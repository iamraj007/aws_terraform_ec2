variable "region" {
  default = "us-east-1"
}

variable "availability_zone" {
  default = "us-east-1a"
}

variable "ec2_instance_type" {
  default = "m4.large"
}

variable "ami_id" {
  default = "ami-0f25b344af3f73199" # win
}

variable "subnet_id" {
  default = " "
}

variable "sg_id" {
  default = " "
}

variable "sg_id_web" {
  default = " "
}

variable "associate_public_ip_address" {
  default = "true"
}

variable "ec2_keyname" {
  #  default = "xxxx"
}

variable "ec2_name" {
  default = " "
}

variable "ec2_monitoring" {
  default = false
}

variable "ebs_data_vol_size" {
  default = " "
}

variable "encrypted" {
  default = "true"
}

variable "kms_key_id" {
  default = " "
}

variable "iam_instance_profile" {
  default = " "
}

variable "Onwer_tag" {
  default = " "
}

variable "Environment_tag" {
  default = " "
}
