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

variable "subnet01ID" {
type = string
description = "Id de la subnet01"
}

variable "subnet02ID" {
type = string
description = "Id de la subnet02"
}

variable "subnet03ID" {
type = string
description = "Id de la subnet03"
}