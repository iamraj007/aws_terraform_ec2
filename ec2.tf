resource "aws_instance" "ec2-instance1" {
  ami                         = var.ami_id
  instance_type               = var.ec2_instance_type
  subnet_id                   = var.subnet_id
  security_groups             = [var.sg_id, var.sg_id_web]
  vpc_security_group_ids      = [var.sg_id]
  key_name                    = var.ec2_keyname
  availability_zone           = var.availability_zone
  associate_public_ip_address = var.associate_public_ip_address
  monitoring                  = var.ec2_monitoring

  root_block_device {
    delete_on_termination = true
    volume_size = 100
    volume_type = "gp2"
    tags = {
      Name        = "EBS_${var.ec2_name}"
      Onwer       = var.Onwer_tag
      Environment = var.Environment_tag
      region      = var.region
    }
  }

  tags = {
    Name         = "${var.ec2_name}-${var.region}"
    Onwer        = var.Onwer_tag
    Environment  = var.Environment_tag
    region       = var.region
    #    Created            = formatdate("DD MMM YYYY", timestamp())
  }
}

resource "aws_ebs_volume" "data-vol-ec2-instance1" {
  availability_zone = var.availability_zone
  size              = var.ebs_data_vol_size
  tags = {
    Name        = "EBS_${var.ec2_name}-data-volume"
    Onwer       = var.Onwer_tag
    Environment = var.Environment_tag
    region      = var.region
  }
}

resource "aws_volume_attachment" "data-vol-ec-instance1-attach" {
  device_name = "/dev/sdb"
  volume_id   = aws_ebs_volume.data-vol-ec2-instance1.id
  instance_id = aws_instance.ec2-instance1.id
}
