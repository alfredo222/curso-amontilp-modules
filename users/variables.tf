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

variable "users_list" {
    type = list 
    description = "List of users to create"
}

variable "group_name" {
    type = string
    description = "Group's name"
}

variable "policies_list" {
    type = list 
    description = "List of policies to assign to the group"
}