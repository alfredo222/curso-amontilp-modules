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

# S3 Specific Variable
variable "bucketName" {
  type = string
}

variable "version_enabled" {
  type = bool
}

# S3 Contents
variable "file_list" {
  type = map
  default = {} 
}
