resource "aws_security_group" "db_sg" {
  name        = "amontilpDataBaseSG"
  description = "sgamontilpdb"
  vpc_id      = var.vpcID
}

#Regla para el tráfico saliente
resource "aws_security_group_rule" "egress_default_db" {
  type              = "egress"
  from_port         = 0
  to_port           = 65535
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.db_sg.id
}

#Regla para el tráfico entrante
resource "aws_security_group_rule" "allow_postgre_port" {

  type                      = "ingress"
  from_port                 = 5432
  to_port                   = 5432
  protocol                  = "tcp"
  cidr_blocks               = ["0.0.0.0/0"]
  security_group_id         = aws_security_group.db_sg.id
  description               = "Permitir conexion por puerto postgresql"
}
