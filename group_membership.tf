resource "aws_iam_user_group_membership" "security" {
  user = aws_iam_user.users["security.admin"].name

  groups = [
    aws_iam_group.security.name
  ]
}

resource "aws_iam_user_group_membership" "cloud_engineer" {
  user = aws_iam_user.users["cloud.engineer"].name

  groups = [
    aws_iam_group.cloud_engineering.name
  ]
}

resource "aws_iam_user_group_membership" "devops_engineer" {
  user = aws_iam_user.users["devops.engineer"].name

  groups = [
    aws_iam_group.cloud_engineering.name
  ]
}

resource "aws_iam_user_group_membership" "developer1" {
  user = aws_iam_user.users["developer1"].name

  groups = [
    aws_iam_group.developers.name
  ]
}

resource "aws_iam_user_group_membership" "developer2" {
  user = aws_iam_user.users["developer2"].name

  groups = [
    aws_iam_group.developers.name
  ]
}

resource "aws_iam_user_group_membership" "finance_manager" {
  user = aws_iam_user.users["finance.manager"].name

  groups = [
    aws_iam_group.finance.name
  ]
}

resource "aws_iam_user_group_membership" "finance_analyst" {
  user = aws_iam_user.users["finance.analyst"].name

  groups = [
    aws_iam_group.finance.name
  ]
}

resource "aws_iam_user_group_membership" "hr_manager" {
  user = aws_iam_user.users["hr.manager"].name

  groups = [
    aws_iam_group.hr.name
  ]
}

resource "aws_iam_user_group_membership" "hr_officer" {
  user = aws_iam_user.users["hr.officer"].name

  groups = [
    aws_iam_group.hr.name
  ]
}

resource "aws_iam_user_group_membership" "auditor1" {
  user = aws_iam_user.users["auditor1"].name

  groups = [
    aws_iam_group.auditors.name
  ]
}

resource "aws_iam_user_group_membership" "auditor2" {
  user = aws_iam_user.users["auditor2"].name

  groups = [
    aws_iam_group.auditors.name
  ]
}

resource "aws_iam_user_group_membership" "intern1" {
  user = aws_iam_user.users["intern1"].name

  groups = [
    aws_iam_group.interns.name
  ]
}

resource "aws_iam_user_group_membership" "intern2" {
  user = aws_iam_user.users["intern2"].name

  groups = [
    aws_iam_group.interns.name
  ]
}

resource "aws_iam_user_group_membership" "intern3" {
  user = aws_iam_user.users["intern3"].name

  groups = [
    aws_iam_group.interns.name
  ]
}

resource "aws_iam_user_group_membership" "intern4" {
  user = aws_iam_user.users["intern4"].name

  groups = [
    aws_iam_group.interns.name
  ]
}