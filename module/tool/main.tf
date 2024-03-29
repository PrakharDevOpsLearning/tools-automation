resource "aws_instance" "tool" {

  ami                    = data.aws_ami.ami_img.image_id
  vpc_security_group_ids = [data.aws_security_group.sec_grp.id]
  instance_type          = var.instance_type
  iam_instance_profile   = aws_iam_instance_profile.instance_profile.name  #added in Session 26
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

#Below code has been added in Session 26, refer session notes why we added -

#IAM role

resource "aws_iam_role" "role" {
  name = "${var.tool_name}-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = "sts:AssumeRole"
        Effect = "Allow"
        Sid    = ""
        Principal = {
          Service = "ec2.amazonaws.com"
        }
      },
    ]
  })

#this is Inline policy inside IAM role

inline_policy {
  name = "${var.tool_name}-inline-policy"

  policy = jsonencode({
      Version = "2012-10-17"
      Statement = [
        {
          Action   =  var.policy_resource_list
          Effect   = "Allow"
          Resource = "*"
        },
      ]
    })
  }


  tags = {
    Name = "${var.tool_name}-role"
  }
}

#Instance Profile

resource "aws_iam_instance_profile" "instance_profile" {
  name = "${var.tool_name}-role"
  role = aws_iam_role.role.name
}