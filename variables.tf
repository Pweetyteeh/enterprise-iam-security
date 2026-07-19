variable "aws_region" {
  description = "AWS Region"
  type        = string
}

variable "usernames" {
  description = "IAM Users"
  type        = set(string)
}