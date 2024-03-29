variable "tools" {
  default = {
    prometheus = {
      instance_type        = "t3.small"
      policy_resource_list = ["ec2:DescribeInstances"] #session 26
    }
  }
}

variable "zone_id" {}


#variable "tools" {
#  default = {
#    prometheus = {
#      instance_type = var.instance_type
#    }
#  }
#}
#
#variable "instance_type" {}