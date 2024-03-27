resource "aws_instance" "tool" {


  ami                    = data.aws_ami.ami_img.image_id
  vpc_security_group_ids = [data.aws_security_group.sec_grp.id]
  instance_type          = var.instance_type
  tags = {
    Name=var.tool_name
  }
}

resource "aws_route53_record" "record" {
  name    = "${var.tool_name}"
  type    = "A"
  zone_id = var.zone_id
  records = [aws_instance.tool.public_ip]
  ttl     = 30
}