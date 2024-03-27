module "aws_instance" {
  source = "./module/app"

  instance_type = var.instance_type
  ssh_user = var.ssh_user
  ssh_pwd = var.ssh_pwd
  zone_id = var.zone_id
  component = var.component
}




