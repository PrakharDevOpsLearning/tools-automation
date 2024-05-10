variable "tools" {
  default = {
    prometheus = {
      instance_type        = "t3.small"
      policy_resource_list = ["ec2:DescribeInstances"] #session 26
    }

    grafana = {
      instance_type        = "t3.small"
      policy_resource_list = []
    }

    vault = {
      instance_type        = "t3.small"
      policy_resource_list = []
    }

    ci = {
      instance_type        = "t3.small"
      policy_resource_list = []
    }

    sonarqube = {
      instance_type        = "t3.large"
      policy_resource_list = []
    }

    elk = {
      instance_type        = "r7i.large"
      policy_resource_list = []
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