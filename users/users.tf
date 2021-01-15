resource "aws_iam_user" "users" {
  for_each = toset(var.users_list) //toset convierte el array en un mapa, el identificador es igual al valor

  name = each.key
  path = "/"
  force_destroy = true
  tags = local.tags
}