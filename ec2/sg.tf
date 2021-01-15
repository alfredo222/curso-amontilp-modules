resource "aws_security_group" "ec2_sg" {
  name        = "ec2securitygroupamontilp"
  description = "sgamontilpec2"
  vpc_id      = var.vpc_id
}

resource "aws_security_group_rule" "egress_default_ec2" {
  type              = "egress"
  from_port         = 0
  to_port           = 65535
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.ec2_sg.id
}

resource "aws_security_group_rule" "allow_all_ssh" {

  type                      = "ingress"
  from_port                 = 22
  to_port                   = 22
  protocol                  = "tcp"
  cidr_blocks               = ["0.0.0.0/0"]
  security_group_id         = aws_security_group.ec2_sg.id
  description               = "Permitir ssh"
}
