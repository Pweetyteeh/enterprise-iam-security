resource "aws_iam_group" "security" {
  name = "Security"
}

resource "aws_iam_group" "cloud_engineering" {
  name = "Cloud-Engineering"
}

resource "aws_iam_group" "developers" {
  name = "Developers"
}

resource "aws_iam_group" "finance" {
  name = "Finance"
}

resource "aws_iam_group" "hr" {
  name = "HR"
}

resource "aws_iam_group" "auditors" {
  name = "Auditors"
}

resource "aws_iam_group" "interns" {
  name = "Interns"
}