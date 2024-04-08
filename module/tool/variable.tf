variable "instance_type" {}
variable "tool_name" {}
variable "zone_id" {}
variable "policy_resource_list" {} #Session 26
variable "dummy_policy" {
  default = ["ec2:DescribeInstanceTypes"]  # This has been added for Vault
}