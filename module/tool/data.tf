data "aws_security_group" "sec_grp" {
  name = "allow-all"
}

data "aws_ami" "ami_img" {
  owners = ["973714476881"]
  most_recent = true
  name_regex = "RHEL-9-DevOps-Practice"
}

