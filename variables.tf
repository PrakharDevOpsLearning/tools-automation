variable "tools" {
  default = {
    prometheus = {
     instance_type = "t3.small"
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