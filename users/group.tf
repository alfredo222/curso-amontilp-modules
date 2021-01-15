resource "aws_iam_group" "group" {
  name = var.group_name
}

resource "aws_iam_group_membership" "users2group" {
  name = var.group_name
  users = [for u in aws_iam_user.users:u.name]
  group = aws_iam_group.group.name
}

resource "aws_iam_group_policy_attachment" "group_policies" {
  for_each = toset(var.policies_list)

  group      = aws_iam_group.group.name
  policy_arn = "arn:aws:iam::aws:policy/${each.key}"
}