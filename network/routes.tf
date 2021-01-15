#Recurso para crear el internet gateway
/*resource "aws_internet_gateway" "gw" {
  vpc_id = var.vpcID
}*/

#----Tablas de enrutamiento----
#Recurso para crear la tabla de enrutamiendo para subred pública
resource "aws_route_table" "public" {
  vpc_id = var.vpcID

  route {
      cidr_block = "0.0.0.0/0"
      gateway_id = var.internetGWid
  }
}

/*
#Recurso para crear la tabla de enrutamiendo para las subredes privadas
resource "aws_route_table" "private" {
  vpc_id = var.vpcID
  route {
      cidr_block = "172.32.0.0/16"
      gateway_id = var.internetGWid //********en las privadas tambien??
  }
  
  //route {
    //  cidr_block = "172.32.21.0/24"
      //gateway_id = var.internetGWid //********en las privadas tambien??
  //}
}*/
#----Fin tablas de enrutamiento----

#Entradas de rutas para las subredes

/*
resource "aws_route" "PrivateRouteEntry" {
  route_table_id            = aws_route_table.private.id
  destination_cidr_block    = "172.32.20.0/24"
  gateway_id = var.internetGWid
  depends_on                = [aws_route_table.private] //Para que cree los recursos en el orden correcto
}

resource "aws_route" "PrivateRouteEntry2" {
  route_table_id            = aws_route_table.private.id
  destination_cidr_block    = "172.32.21.0/24"
  gateway_id = var.internetGWid
  depends_on                = [aws_route_table.private] //Para que cree los recursos en el orden correcto
}

/*resource "aws_route" "PublicRouteEntry" {
  route_table_id            = aws_route_table.public.id
  destination_cidr_block    = "0.0.0.0/0"
  gateway_id = var.internetGWid
  depends_on                = [aws_route_table.public] //Para que cree los recursos en el orden correcto
}*/

#Fin entradas de rutas para las subredes


#Asociacion de las tablas de enrutamiento a las subredes
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.subnet01.id
  route_table_id = aws_route_table.public.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.subnet02.id
  route_table_id = var.mainRouteTableID //aws_route_table.private.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.subnet03.id
  route_table_id = var.mainRouteTableID //aws_route_table.private.id
}