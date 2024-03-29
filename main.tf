module "tool" {
  for_each = var.tools
  source   = "./module/tool"

  tool_name            = each.key
  instance_type        = each.value["instance_type"]
  policy_resource_list = each.value["policy_resource_list"]

  zone_id       = var.zone_id
}

