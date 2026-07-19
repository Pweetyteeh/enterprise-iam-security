resource "aws_accessanalyzer_analyzer" "enterprise" {
  analyzer_name = "Enterprise-IAM-Analyzer"
  type          = "ACCOUNT"
}