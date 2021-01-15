# Common
variable "environment" {
  type        = string
  description = "Tag identifying the environment"
}

variable "project" {
  type        = string
  description = "Tag identifying the project"
}

variable "resource_prefix" {
  type        = string
  description = "Prefix for Resources"
}

variable "vpcID" {
  type = string
  description ="Id de la red virtual"
}

variable "internetGWid" {
  type = string
  description = "Id del Internet Gateway"
}

variable "mainRouteTableID" {
  type = string
  description = "Id main route table"
}