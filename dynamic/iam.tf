
resource "aws_iam_user" "user" {
  name = "dynamic_user"

}

locals {
  tags = ["tag1", "tag2"]
}

# doesn't work bc policy isn't a block, it's an argument

# locals {
#   actions = ["ec2:describe", "cloudwatch:ListMetrics"]
# }

# resource "aws_iam_user_policy" "policy" {
#   name = "dynamic_policy"
#   user = aws_iam_user.user.name

#   dynamic "policy" {
#     for_each = local.actions
#     iterator = action

#     content {
#       jsonencode({
#         Version = "2012-10-17"
#         Statement = [
#           {
#             Action = [
#               "${action.value}",
#             ]
#             Effect   = "Allow"
#             Resource = "*"
#           },
#         ]
#       })
#     }
#   }
# }
