locals {
  tags = {
      "Project"          = var.project
      "Environment"      = var.environment
      "TerraformManaged" = "true"
    }
}