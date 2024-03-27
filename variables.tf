variable "tools" {
  default = {
    prometheus = {
     instance_type = var.instance_type
    }
  }
}

variable "zone_id" {}
variable "instance_type" {}
