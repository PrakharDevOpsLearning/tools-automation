module "tool" {
  for_each = var.tools
  source   = "./module/tool"

  tool_name     = each.key
  instance_type = each.value["instance_type"]
  zone_id       = var.zone_id
}

