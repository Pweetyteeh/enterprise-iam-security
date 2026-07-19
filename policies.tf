resource "aws_iam_policy" "security_policy" {
  name        = "Security-Full-Access"
  description = "Security Team Permissions"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "iam:*",
          "cloudtrail:*",
          "cloudwatch:*",
          "logs:*"
        ]

        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_group_policy_attachment" "security_attach" {
  group      = aws_iam_group.security.name
  policy_arn = aws_iam_policy.security_policy.arn
}

resource "aws_iam_policy" "cloud_engineering_policy" {
  name        = "Cloud-Engineering-Full-Access"
  description = "Cloud Engineering Team Permissions"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "ec2:*",
          "elasticloadbalancing:*",
          "autoscaling:*",
          "cloudformation:*",
          "cloudwatch:*",
          "logs:*",
          "s3:*",
          "iam:PassRole"
        ]

        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_group_policy_attachment" "cloud_engineering_attach" {
  group      = aws_iam_group.cloud_engineering.name
  policy_arn = aws_iam_policy.cloud_engineering_policy.arn
}

resource "aws_iam_policy" "developers_policy" {
  name        = "Developers-CloudFormation"
  description = "Developers CloudFormation Permissions"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "cloudformation:*"
        ]

        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_group_policy_attachment" "developers_attach" {
  group      = aws_iam_group.developers.name
  policy_arn = aws_iam_policy.developers_policy.arn
}

resource "aws_iam_group_policy_attachment" "finance_attach" {
  group      = aws_iam_group.finance.name
  policy_arn = "arn:aws:iam::aws:policy/job-function/Billing"
}

resource "aws_iam_group_policy_attachment" "hr_attach" {
  group      = aws_iam_group.hr.name
  policy_arn = "arn:aws:iam::aws:policy/IAMReadOnlyAccess"
}

resource "aws_iam_group_policy_attachment" "auditors_attach" {
  group      = aws_iam_group.auditors.name
  policy_arn = "arn:aws:iam::aws:policy/ReadOnlyAccess"
}

resource "aws_iam_policy" "interns_policy" {
  name        = "Interns-Limited"
  description = "Limited permissions for interns"

  policy = jsonencode({
    Version = "2012-10-17"

    Statement = [
      {
        Effect = "Allow"

        Action = [
          "iam:ChangePassword",
          "iam:GetUser"
        ]

        Resource = "*"
      }
    ]
  })
}

resource "aws_iam_group_policy_attachment" "interns_attach" {
  group      = aws_iam_group.interns.name
  policy_arn = aws_iam_policy.interns_policy.arn
}