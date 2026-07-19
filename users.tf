resource "aws_iam_user" "users" {
  for_each = var.usernames

  name = each.value

  tags = {
    ManagedBy = "Terraform"
    Project   = "Enterprise-IAM"
  }
}