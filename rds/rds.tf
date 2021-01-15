resource "random_password" "pwdDB" {
    length = 16
    special = true
    override_special = "_%@"
}

#Recurso para crear un subnet group
resource "aws_db_subnet_group" "subnetGroup" {
  name       = "amontilpsubnetgroup"
  subnet_ids = [var.subnet01ID, var.subnet02ID, var.subnet03ID]
}

#Recurso para crear la instancia de la base de datos
resource "aws_db_instance" "amontilpDB" {
  allocated_storage    = 20                                 //El mínimo
  storage_type         = "gp2"                              //Tipo para general purpose SSD
  engine               = "postgres"
  engine_version       = "12.5"                             //Lo gestiona DB cluster para el motor auroral-postgresql
  instance_class       = "db.t2.micro"                      //Current-generation instance classes that provide a baseline performance level, with the ability to burst to full CPU usage.
  name                 = "amontilpDB"
  username             = "fred"
  password             = random_password.pwdDB.result
  parameter_group_name = "default.postgres12"
  //identifier = "amontilp-db-instance"                      Nombre para la instancia de la base de datos                     

  //Storage Autoscaling
  max_allocated_storage = 50                                //Al definir este parámetro se activa el autoescalado

  //Conectividad
  db_subnet_group_name = aws_db_subnet_group.subnetGroup.id //Asignación del grupo de subredes, el id contiene el nombre
  publicly_accessible = false                               //Acceso público a la DB restringido

  //Multi-AZ deployement
  multi_az = false                                          //No crear replicas de la DB

  //Seguridad-Control de acceso
  vpc_security_group_ids = [ aws_security_group.db_sg.id ]
}