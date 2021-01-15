data "aws_availability_zones" "aws_azs" {}

#Importamos como dato la vpc
data "aws_vpc" "vpc" {
  id = var.vpcID
}

#Recurso para la subred 1, pública
resource "aws_subnet" "subnet01" {
  vpc_id = var.vpcID
  cidr_block = "172.32.19.0/24"
  map_public_ip_on_launch =  true  # true para la pública, false para las privadas
}

#Recurso para la subred 2, privada
resource "aws_subnet" "subnet02" {
  vpc_id = var.vpcID
  cidr_block = "172.32.20.0/24"
  map_public_ip_on_launch =  false
}

#Recurso para la subred 3, privada
resource "aws_subnet" "subnet03" {
  vpc_id = var.vpcID
  cidr_block = "172.32.21.0/24"
  map_public_ip_on_launch =  false
}







