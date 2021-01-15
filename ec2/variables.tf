# General
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

variable "ami_id" {
  type = string
  description = "id imagen"
}

variable "subnet_id" {
  type = string
  description = "id de la subnet de la ec2"
}

variable "instance_type" {
  type = string
  description = "tipo de instancia"
}

variable "vpc_id" {
  type = string
  description = "id de la vpc"
}

variable "key_name" {
  type = string
}